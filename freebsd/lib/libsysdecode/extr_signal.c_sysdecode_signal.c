
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int nitems (char const**) ;
 char const** signames ;

const char *
sysdecode_signal(int sig)
{

 if ((unsigned)sig < nitems(signames))
  return (signames[sig]);
 return (((void*)0));
}
