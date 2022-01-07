
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HOST_CONTROL_ENTRY ;
 int getaccommon (int ,char*,size_t) ;

int
getachost(char *auditstr, size_t len)
{

 return (getaccommon(HOST_CONTROL_ENTRY, auditstr, len));
}
