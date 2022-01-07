
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * fbtp_patchpoint; } ;
typedef TYPE_1__ fbt_probe_t ;
typedef int fbt_patchval_t ;


 int __syncicache (int *,int) ;

void
fbt_patch_tracepoint(fbt_probe_t *fbt, fbt_patchval_t val)
{

 *fbt->fbtp_patchpoint = val;
 __syncicache(fbt->fbtp_patchpoint, 4);
}
