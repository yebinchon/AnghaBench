
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tv ;
struct timeval {int tv_usec; int tv_sec; } ;
struct thread {int dummy; } ;
struct sockaddr {int tv_usec; int tv_sec; } ;
struct setsockopt_args {int level; int name; int valsize; int val; int s; } ;
struct linux_setsockopt_args {int optlen; int optval; int s; int optname; int level; } ;
typedef int socklen_t ;
typedef int linux_tv ;
struct TYPE_3__ {int tv_usec; int tv_sec; } ;
typedef TYPE_1__ l_timeval ;


 int ENOPROTOOPT ;



 int IPV6_NEXTHOP ;
 int M_SONAME ;
 int PTRIN (int ) ;



 int UIO_SYSSPACE ;
 int copyin (int ,TYPE_1__*,int) ;
 int free (struct timeval*,int ) ;
 int kern_setsockopt (struct thread*,int ,int,int,struct timeval*,int ,int) ;
 int linux_to_bsd_ip6_sockopt (int ) ;
 int linux_to_bsd_ip_sockopt (int ) ;
 int linux_to_bsd_so_sockopt (int ) ;
 int linux_to_bsd_sockaddr (int ,struct timeval**,int*) ;
 int linux_to_bsd_sockopt_level (int ) ;
 int linux_to_bsd_tcp_sockopt (int ) ;
 int sys_setsockopt (struct thread*,struct setsockopt_args*) ;

int
linux_setsockopt(struct thread *td, struct linux_setsockopt_args *args)
{
 struct setsockopt_args bsd_args;






 l_timeval linux_tv;
 struct sockaddr *sa;
 struct timeval tv;
 socklen_t len;
 int error, name;

 bsd_args.s = args->s;
 bsd_args.level = linux_to_bsd_sockopt_level(args->level);
 switch (bsd_args.level) {
 case 130:
  name = linux_to_bsd_so_sockopt(args->optname);
  switch (name) {
  case 129:

  case 128:
   error = copyin(PTRIN(args->optval), &linux_tv,
       sizeof(linux_tv));
   if (error != 0)
    return (error);
   tv.tv_sec = linux_tv.tv_sec;
   tv.tv_usec = linux_tv.tv_usec;
   return (kern_setsockopt(td, args->s, bsd_args.level,
       name, &tv, UIO_SYSSPACE, sizeof(tv)));

  default:
   break;
  }
  break;
 case 133:
  name = linux_to_bsd_ip_sockopt(args->optname);
  break;
 case 132:
  name = linux_to_bsd_ip6_sockopt(args->optname);
  break;
 case 131:
  name = linux_to_bsd_tcp_sockopt(args->optname);
  break;
 default:
  name = -1;
  break;
 }
 if (name == -1)
  return (ENOPROTOOPT);


 if (name == IPV6_NEXTHOP) {

  len = args->optlen;
  error = linux_to_bsd_sockaddr(PTRIN(args->optval), &sa, &len);
  if (error != 0)
   return (error);

  error = kern_setsockopt(td, args->s, bsd_args.level,
      name, sa, UIO_SYSSPACE, len);
  free(sa, M_SONAME);
 } else {
  bsd_args.name = name;
  bsd_args.val = PTRIN(args->optval);
  bsd_args.valsize = args->optlen;
  error = sys_setsockopt(td, &bsd_args);
 }

 return (error);
}
