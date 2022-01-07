
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sigevent {void* sigev_signo; int sigev_notify; } ;
struct l_sigevent {int sigev_notify; int sigev_signo; } ;
struct TYPE_4__ {int _tid; } ;
struct TYPE_3__ {int sival_ptr; } ;


 int CP (struct l_sigevent,struct sigevent,int ) ;
 int CP2 (struct l_sigevent,struct sigevent,int ,int ) ;
 int EINVAL ;
 int ENOSYS ;
 int LINUX_SIG_VALID (int ) ;




 int PTRIN_CP (struct l_sigevent,struct sigevent,int ) ;
 int SIGEV_NONE ;
 int SIGEV_SIGNAL ;
 int SIGEV_THREAD ;
 int SIGEV_THREAD_ID ;
 TYPE_2__ _l_sigev_un ;
 void* linux_to_bsd_signal (int ) ;
 int sigev_notify ;
 int sigev_notify_thread_id ;
 TYPE_1__ sigev_value ;

__attribute__((used)) static int
linux_convert_l_sigevent(struct l_sigevent *l_sig, struct sigevent *sig)
{

 CP(*l_sig, *sig, sigev_notify);
 switch (l_sig->sigev_notify) {
 case 130:
  if (!LINUX_SIG_VALID(l_sig->sigev_signo))
   return (EINVAL);
  sig->sigev_notify = SIGEV_SIGNAL;
  sig->sigev_signo = linux_to_bsd_signal(l_sig->sigev_signo);
  PTRIN_CP(*l_sig, *sig, sigev_value.sival_ptr);
  break;
 case 131:
  sig->sigev_notify = SIGEV_NONE;
  break;
 case 129:





  return (EINVAL);

 case 128:
  if (!LINUX_SIG_VALID(l_sig->sigev_signo))
   return (EINVAL);
  sig->sigev_notify = SIGEV_THREAD_ID;
  CP2(*l_sig, *sig, _l_sigev_un._tid, sigev_notify_thread_id);
  sig->sigev_signo = linux_to_bsd_signal(l_sig->sigev_signo);
  PTRIN_CP(*l_sig, *sig, sigev_value.sival_ptr);
  break;
 default:
  return (EINVAL);
 }
 return (0);
}
