
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** sshpam_env ;

char **
fetch_pam_child_environment(void)
{
 return sshpam_env;
}
