
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ksem_unlink (char const*) ;

int
_libc_sem_unlink_compat(const char *name)
{

 return (ksem_unlink(name));
}
