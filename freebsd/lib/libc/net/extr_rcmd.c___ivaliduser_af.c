
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int sin6_family; int sin6_len; int sin6_addr; } ;
struct sockaddr_in {int sin_family; int sin_len; int sin_addr; } ;
struct sockaddr {int sa_len; } ;
typedef int ss ;
typedef int FILE ;




 int __ivaliduser_sa (int *,struct sockaddr*,int ,char const*,char const*) ;
 int memcpy (int *,void const*,int) ;
 int memset (struct sockaddr_storage*,int ,int) ;

int
__ivaliduser_af(FILE *hostf, const void *raddr, const char *luser,
    const char *ruser, int af, int len)
{
 struct sockaddr *sa = ((void*)0);
 struct sockaddr_in *sin = ((void*)0);



 struct sockaddr_storage ss;

 memset(&ss, 0, sizeof(ss));
 switch (af) {
 case 129:
  if (len != sizeof(sin->sin_addr))
   return -1;
  sin = (struct sockaddr_in *)&ss;
  sin->sin_family = 129;
  sin->sin_len = sizeof(struct sockaddr_in);
  memcpy(&sin->sin_addr, raddr, sizeof(sin->sin_addr));
  break;
 default:
  return -1;
 }

 sa = (struct sockaddr *)&ss;
 return __ivaliduser_sa(hostf, sa, sa->sa_len, luser, ruser);
}
