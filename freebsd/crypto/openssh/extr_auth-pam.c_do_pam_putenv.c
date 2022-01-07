
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int pam_putenv (int ,char*) ;
 int snprintf (char*,size_t,char*,char*,char*) ;
 int sshpam_handle ;
 int strlen (char*) ;
 char* xmalloc (size_t) ;

int
do_pam_putenv(char *name, char *value)
{
 int ret = 1;
 return (ret);
}
