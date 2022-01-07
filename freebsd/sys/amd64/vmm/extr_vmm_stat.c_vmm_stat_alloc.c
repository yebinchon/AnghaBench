
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_VMM_STAT ;
 int M_WAITOK ;
 void* malloc (int ,int ,int ) ;
 int vst_size ;

void *
vmm_stat_alloc(void)
{

 return (malloc(vst_size, M_VMM_STAT, M_WAITOK));
}
