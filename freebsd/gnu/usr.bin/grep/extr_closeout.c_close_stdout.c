
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close_stdout_status (int ) ;
 int default_exit_status ;

void
close_stdout (void)
{
  close_stdout_status (default_exit_status);
}
