
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* lookup_value (int ,int) ;
 int shmctlops ;

const char *
sysdecode_shmctl_cmd(int cmd)
{

 return (lookup_value(shmctlops, cmd));
}
