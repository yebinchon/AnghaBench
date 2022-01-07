
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ fbtp_patchpoint; struct TYPE_6__* fbtp_tracenext; struct TYPE_6__* fbtp_hashnext; } ;
typedef TYPE_1__ fbt_probe_t ;


 int FBT_ADDR2NDX (scalar_t__) ;
 int M_FBT ;
 TYPE_1__** fbt_probetab ;
 int free (TYPE_1__*,int ) ;
 int panic (char*,TYPE_1__*) ;

__attribute__((used)) static void
fbt_destroy_one(fbt_probe_t *fbt)
{
 fbt_probe_t *hash, *hashprev, *next;
 int ndx;

 ndx = FBT_ADDR2NDX(fbt->fbtp_patchpoint);
 for (hash = fbt_probetab[ndx], hashprev = ((void*)0); hash != ((void*)0);
     hashprev = hash, hash = hash->fbtp_hashnext) {
  if (hash == fbt) {
   if ((next = fbt->fbtp_tracenext) != ((void*)0))
    next->fbtp_hashnext = hash->fbtp_hashnext;
   else
    next = hash->fbtp_hashnext;
   if (hashprev != ((void*)0))
    hashprev->fbtp_hashnext = next;
   else
    fbt_probetab[ndx] = next;
   goto free;
  } else if (hash->fbtp_patchpoint == fbt->fbtp_patchpoint) {
   for (next = hash; next->fbtp_tracenext != ((void*)0);
       next = next->fbtp_tracenext) {
    if (fbt == next->fbtp_tracenext) {
     next->fbtp_tracenext =
         fbt->fbtp_tracenext;
     goto free;
    }
   }
  }
 }
 panic("probe %p not found in hash table", fbt);
free:
 free(fbt, M_FBT);
}
