
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *) ;
 scalar_t__ maxcpu ;
 int * pcpu_data ;

__attribute__((used)) static void
_kvm_pcpu_clear(void)
{

 maxcpu = 0;
 free(pcpu_data);
 pcpu_data = ((void*)0);
}
