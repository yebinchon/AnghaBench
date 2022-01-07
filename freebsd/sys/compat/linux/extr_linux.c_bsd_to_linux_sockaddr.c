
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_family; } ;
struct l_sockaddr {int sa_family; } ;
typedef int socklen_t ;


 int EAFNOSUPPORT ;
 int EINVAL ;
 int M_SONAME ;
 int M_WAITOK ;
 int UCHAR_MAX ;
 int bcopy (struct sockaddr const*,struct l_sockaddr*,int) ;
 int bsd_to_linux_domain (int ) ;
 int free (struct l_sockaddr*,int ) ;
 struct l_sockaddr* malloc (int,int ,int ) ;

int
bsd_to_linux_sockaddr(const struct sockaddr *sa, struct l_sockaddr **lsa,
    socklen_t len)
{
 struct l_sockaddr *kosa;
 int error, bdom;

 *lsa = ((void*)0);
 if (len < 2 || len > UCHAR_MAX)
  return (EINVAL);

 kosa = malloc(len, M_SONAME, M_WAITOK);
 bcopy(sa, kosa, len);

 bdom = bsd_to_linux_domain(sa->sa_family);
 if (bdom == -1) {
  error = EAFNOSUPPORT;
  goto out;
 }

 kosa->sa_family = bdom;
 *lsa = kosa;
 return (0);

out:
 free(kosa, M_SONAME);
 return (error);
}
