
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* sysdecode_shmctl_cmd (int) ;

const char *
sysdecode_msgctl_cmd(int cmd)
{

 return (sysdecode_shmctl_cmd(cmd));
}
