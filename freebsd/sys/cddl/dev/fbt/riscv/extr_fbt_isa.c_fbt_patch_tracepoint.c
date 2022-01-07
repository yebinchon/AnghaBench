
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int fbtp_patchval; int * fbtp_patchpoint; } ;
typedef TYPE_1__ fbt_probe_t ;
typedef int fbt_patchval_t ;




 int fence_i () ;

void
fbt_patch_tracepoint(fbt_probe_t *fbt, fbt_patchval_t val)
{

 switch(fbt->fbtp_patchval) {
 case 129:
  *(uint16_t *)fbt->fbtp_patchpoint = (uint16_t)val;
  fence_i();
  break;
 case 128:
  *fbt->fbtp_patchpoint = val;
  fence_i();
  break;
 };
}
