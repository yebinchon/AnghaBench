
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int register_t ;
struct TYPE_3__ {int * fbtp_patchpoint; } ;
typedef TYPE_1__ fbt_probe_t ;
typedef int fbt_patchval_t ;


 int disable_wp () ;
 int intr_disable () ;
 int intr_restore (int ) ;
 int restore_wp (int) ;

void
fbt_patch_tracepoint(fbt_probe_t *fbt, fbt_patchval_t val)
{
 register_t intr;
 bool old_wp;

 intr = intr_disable();
 old_wp = disable_wp();
 *fbt->fbtp_patchpoint = val;
 restore_wp(old_wp);
 intr_restore(intr);
}
