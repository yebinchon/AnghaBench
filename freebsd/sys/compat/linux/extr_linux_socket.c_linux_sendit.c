
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sockaddr {int dummy; } ;
struct msghdr {int msg_namelen; struct sockaddr* msg_name; } ;
struct mbuf {int dummy; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int M_SONAME ;
 int free (struct sockaddr*,int ) ;
 int kern_sendit (struct thread*,int,struct msghdr*,int ,struct mbuf*,int) ;
 int linux_to_bsd_msg_flags (int) ;
 int linux_to_bsd_sockaddr (struct sockaddr*,struct sockaddr**,int*) ;

__attribute__((used)) static int
linux_sendit(struct thread *td, int s, struct msghdr *mp, int flags,
    struct mbuf *control, enum uio_seg segflg)
{
 struct sockaddr *to;
 int error, len;

 if (mp->msg_name != ((void*)0)) {
  len = mp->msg_namelen;
  error = linux_to_bsd_sockaddr(mp->msg_name, &to, &len);
  if (error != 0)
   return (error);
  mp->msg_name = to;
 } else
  to = ((void*)0);

 error = kern_sendit(td, s, mp, linux_to_bsd_msg_flags(flags), control,
     segflg);

 if (to)
  free(to, M_SONAME);
 return (error);
}
