
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int tid; } ;


 int thr_kill (int ,int) ;

int
_thr_send_sig(struct pthread *thread, int sig)
{
 return thr_kill(thread->tid, sig);
}
