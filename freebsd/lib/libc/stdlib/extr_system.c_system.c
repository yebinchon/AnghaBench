
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t INTERPOS_system ;
 scalar_t__* __libc_interposing ;
 int stub1 (char const*) ;

int
system(const char *command)
{

 return (((int (*)(const char *))
     __libc_interposing[INTERPOS_system])(command));
}
