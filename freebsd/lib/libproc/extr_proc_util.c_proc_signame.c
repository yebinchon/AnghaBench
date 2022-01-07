
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlcpy (char*,int ,size_t) ;
 int strsignal (int) ;

char *
proc_signame(int sig, char *name, size_t namesz)
{

 strlcpy(name, strsignal(sig), namesz);

 return (name);
}
