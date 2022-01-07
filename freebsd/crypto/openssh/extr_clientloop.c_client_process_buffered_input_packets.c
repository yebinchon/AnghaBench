
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPATCH_NONBLOCK ;
 int active_state ;
 int quit_pending ;
 int ssh_dispatch_run_fatal (int ,int ,int *) ;

__attribute__((used)) static void
client_process_buffered_input_packets(void)
{
 ssh_dispatch_run_fatal(active_state, DISPATCH_NONBLOCK, &quit_pending);
}
