
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* sival_ptr; } ;
struct sigevent {TYPE_2__ sigev_value; scalar_t__ sigev_notify_thread_id; int sigev_signo; int sigev_notify; } ;
struct sigev_node {TYPE_1__* sn_tn; } ;
typedef scalar_t__ sigev_id_t ;
typedef scalar_t__ lwpid_t ;
struct TYPE_3__ {scalar_t__ tn_lwpid; } ;


 int SIGEV_THREAD_ID ;
 int SIGLIBRT ;

void
__sigev_get_sigevent(struct sigev_node *sn, struct sigevent *newevp,
 sigev_id_t id)
{




 newevp->sigev_notify = SIGEV_THREAD_ID;
 newevp->sigev_signo = SIGLIBRT;
 newevp->sigev_notify_thread_id = (lwpid_t)sn->sn_tn->tn_lwpid;
 newevp->sigev_value.sival_ptr = (void *)id;
}
