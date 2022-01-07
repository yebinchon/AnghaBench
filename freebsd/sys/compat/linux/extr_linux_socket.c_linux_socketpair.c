
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct socketpair_args {scalar_t__ domain; int type; int* rsv; scalar_t__ protocol; } ;
struct linux_socketpair_args {int type; scalar_t__ protocol; int rsv; int domain; } ;


 int EAFNOSUPPORT ;
 int EINVAL ;
 int EPROTONOSUPPORT ;
 int LINUX_SOCK_MAX ;
 int LINUX_SOCK_TYPE_MASK ;
 scalar_t__ PF_LOCAL ;
 scalar_t__ PF_UNIX ;
 scalar_t__ PTRIN (int ) ;
 int linux_set_socket_flags (int,int*) ;
 scalar_t__ linux_to_bsd_domain (int ) ;
 int sys_socketpair (struct thread*,struct socketpair_args*) ;

int
linux_socketpair(struct thread *td, struct linux_socketpair_args *args)
{
 struct socketpair_args bsd_args;





 int error;

 bsd_args.domain = linux_to_bsd_domain(args->domain);
 if (bsd_args.domain != PF_LOCAL)
  return (EAFNOSUPPORT);
 bsd_args.type = args->type & LINUX_SOCK_TYPE_MASK;
 if (bsd_args.type < 0 || bsd_args.type > LINUX_SOCK_MAX)
  return (EINVAL);
 error = linux_set_socket_flags(args->type & ~LINUX_SOCK_TYPE_MASK,
  &bsd_args.type);
 if (error != 0)
  return (error);
 if (args->protocol != 0 && args->protocol != PF_UNIX)







  return (EPROTONOSUPPORT);
 else
  bsd_args.protocol = 0;
 bsd_args.rsv = (int *)PTRIN(args->rsv);
 return (sys_socketpair(td, &bsd_args));
}
