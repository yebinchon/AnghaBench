
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mod_remove (int *) ;
 int modlinkage ;

int
_fini(void)
{
 return (mod_remove(&modlinkage));
}
