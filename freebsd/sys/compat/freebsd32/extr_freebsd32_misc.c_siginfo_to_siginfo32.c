
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sival_int; } ;
struct siginfo32 {uintptr_t si_addr; int si_overrun; int si_timerid; TYPE_1__ si_value; int si_status; int si_uid; int si_pid; int si_code; int si_errno; int si_signo; } ;
struct TYPE_6__ {int sival_int; } ;
struct TYPE_7__ {int si_overrun; int si_timerid; TYPE_2__ si_value; scalar_t__ si_addr; int si_status; int si_uid; int si_pid; int si_code; int si_errno; int si_signo; } ;
typedef TYPE_3__ siginfo_t ;


 int bzero (struct siginfo32*,int) ;

void
siginfo_to_siginfo32(const siginfo_t *src, struct siginfo32 *dst)
{
 bzero(dst, sizeof(*dst));
 dst->si_signo = src->si_signo;
 dst->si_errno = src->si_errno;
 dst->si_code = src->si_code;
 dst->si_pid = src->si_pid;
 dst->si_uid = src->si_uid;
 dst->si_status = src->si_status;
 dst->si_addr = (uintptr_t)src->si_addr;
 dst->si_value.sival_int = src->si_value.sival_int;
 dst->si_timerid = src->si_timerid;
 dst->si_overrun = src->si_overrun;
}
