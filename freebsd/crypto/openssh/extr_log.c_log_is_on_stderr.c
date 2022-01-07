
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ STDERR_FILENO ;
 scalar_t__ log_on_stderr ;
 scalar_t__ log_stderr_fd ;

int
log_is_on_stderr(void)
{
 return log_on_stderr && log_stderr_fd == STDERR_FILENO;
}
