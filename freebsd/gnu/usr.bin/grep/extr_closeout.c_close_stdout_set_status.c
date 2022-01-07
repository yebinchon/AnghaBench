
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int default_exit_status ;

void
close_stdout_set_status (int status)
{
  default_exit_status = status;
}
