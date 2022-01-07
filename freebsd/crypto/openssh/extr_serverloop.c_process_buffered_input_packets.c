
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;


 int DISPATCH_NONBLOCK ;
 int ssh_dispatch_run_fatal (struct ssh*,int ,int *) ;

__attribute__((used)) static void
process_buffered_input_packets(struct ssh *ssh)
{
 ssh_dispatch_run_fatal(ssh, DISPATCH_NONBLOCK, ((void*)0));
}
