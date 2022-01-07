
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FLAGS_CONTROL_ENTRY ;
 int getaccommon (int ,char*,int) ;

int
getacflg(char *auditstr, int len)
{

 return (getaccommon(FLAGS_CONTROL_ENTRY, auditstr, len));
}
