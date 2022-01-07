
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** pam_getenvlist (int ) ;
 int sshpam_handle ;

char **
fetch_pam_environment(void)
{
 return (pam_getenvlist(sshpam_handle));
}
