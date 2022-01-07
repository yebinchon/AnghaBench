
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int auditd_hostlen ;
 int auditd_minval ;
 int free_dir_q () ;

void
auditd_close_dirs(void)
{
 free_dir_q();
 auditd_minval = -1;
 auditd_hostlen = -1;
}
