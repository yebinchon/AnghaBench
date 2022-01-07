
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fbtp_savedval; struct TYPE_4__* fbtp_probenext; } ;
typedef TYPE_1__ fbt_probe_t ;


 int fbt_patch_tracepoint (TYPE_1__*,int ) ;
 TYPE_1__** fbt_probetab ;
 int fbt_probetab_size ;

__attribute__((used)) static void
fbt_doubletrap(void)
{
 fbt_probe_t *fbt;
 int i;

 for (i = 0; i < fbt_probetab_size; i++) {
  fbt = fbt_probetab[i];

  for (; fbt != ((void*)0); fbt = fbt->fbtp_probenext)
   fbt_patch_tracepoint(fbt, fbt->fbtp_savedval);
 }
}
