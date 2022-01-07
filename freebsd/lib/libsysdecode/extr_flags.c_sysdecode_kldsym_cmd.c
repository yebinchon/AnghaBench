
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kldsymcmd ;
 char const* lookup_value (int ,int) ;

const char *
sysdecode_kldsym_cmd(int cmd)
{

 return (lookup_value(kldsymcmd, cmd));
}
