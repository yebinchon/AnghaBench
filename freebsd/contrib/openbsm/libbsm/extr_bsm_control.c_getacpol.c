
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POLICY_CONTROL_ENTRY ;
 int getaccommon (int ,char*,size_t) ;

int
getacpol(char *auditstr, size_t len)
{

 return (getaccommon(POLICY_CONTROL_ENTRY, auditstr, len));
}
