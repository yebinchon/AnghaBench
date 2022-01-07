
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac {int dummy; } ;


 int __mac_execve (char*,char**,char**,struct mac*) ;

int
mac_execve(char *fname, char **argv, char **envv, struct mac *label)
{

 return (__mac_execve(fname, argv, envv, label));
}
