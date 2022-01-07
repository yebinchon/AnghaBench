
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_VMM_STAT ;
 int free (void*,int ) ;

void
vmm_stat_free(void *vp)
{
 free(vp, M_VMM_STAT);
}
