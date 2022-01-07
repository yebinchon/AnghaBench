
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAXERRCODE ;
 char const** auditd_errmsg ;

const char *
auditd_strerror(int errcode)
{
 int idx = -errcode;

 if (idx < 0 || idx > (int)MAXERRCODE)
  return ("Invalid auditd error code");

 return (auditd_errmsg[idx]);
}
