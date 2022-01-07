
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int GET_THREAD_SIGNALS (int *) ;
 int NSIG ;
 int sigaddset (int *,int) ;
 int sigemptyset (int *) ;
 scalar_t__ sigismember (int *,int) ;
 scalar_t__ signal_print_update (int ,int ) ;
 scalar_t__ signal_stop_update (int ,int ) ;
 int target_signal_from_host (int) ;
 int thread_print_set ;
 int thread_signals ;
 int thread_stop_set ;

__attribute__((used)) static void
check_thread_signals (void)
{
}
