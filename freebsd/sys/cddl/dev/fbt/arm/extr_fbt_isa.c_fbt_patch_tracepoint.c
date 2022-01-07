
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int val ;
struct TYPE_3__ {int * fbtp_patchpoint; } ;
typedef TYPE_1__ fbt_probe_t ;
typedef int fbt_patchval_t ;


 int icache_sync (int ,int) ;

void
fbt_patch_tracepoint(fbt_probe_t *fbt, fbt_patchval_t val)
{

 *fbt->fbtp_patchpoint = val;
 icache_sync((vm_offset_t)fbt->fbtp_patchpoint, sizeof(val));
}
