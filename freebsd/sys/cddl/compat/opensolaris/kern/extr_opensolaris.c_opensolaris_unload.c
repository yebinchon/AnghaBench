
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_lock ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void
opensolaris_unload(void)
{
 mutex_destroy(&cpu_lock);
}
