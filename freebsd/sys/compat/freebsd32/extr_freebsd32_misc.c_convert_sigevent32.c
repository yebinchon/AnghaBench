
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sigevent32 {int dummy; } ;
struct sigevent {int sigev_notify; } ;
struct TYPE_2__ {int sival_ptr; } ;


 int CP (struct sigevent32,struct sigevent,int ) ;
 int EINVAL ;
 int PTRIN_CP (struct sigevent32,struct sigevent,int ) ;




 int sigev_notify ;
 int sigev_notify_kevent_flags ;
 int sigev_notify_kqueue ;
 int sigev_notify_thread_id ;
 int sigev_signo ;
 TYPE_1__ sigev_value ;

int
convert_sigevent32(struct sigevent32 *sig32, struct sigevent *sig)
{

 CP(*sig32, *sig, sigev_notify);
 switch (sig->sigev_notify) {
 case 130:
  break;
 case 128:
  CP(*sig32, *sig, sigev_notify_thread_id);

 case 129:
  CP(*sig32, *sig, sigev_signo);
  PTRIN_CP(*sig32, *sig, sigev_value.sival_ptr);
  break;
 case 131:
  CP(*sig32, *sig, sigev_notify_kqueue);
  CP(*sig32, *sig, sigev_notify_kevent_flags);
  PTRIN_CP(*sig32, *sig, sigev_value.sival_ptr);
  break;
 default:
  return (EINVAL);
 }
 return (0);
}
