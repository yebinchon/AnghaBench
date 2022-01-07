
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_9__ {char* name; int size; scalar_t__ value; } ;
typedef TYPE_1__ linker_symval_t ;
typedef TYPE_2__* linker_file_t ;
struct TYPE_11__ {char const* fbtp_name; scalar_t__* fbtp_patchpoint; int fbtp_symindx; uintptr_t fbtp_roffset; struct TYPE_11__* fbtp_hashnext; void* fbtp_patchval; scalar_t__ fbtp_savedval; int fbtp_rval; int fbtp_loadcnt; TYPE_2__* fbtp_ctl; void* fbtp_id; struct TYPE_11__* fbtp_probenext; struct TYPE_11__* fbtp_tracenext; } ;
typedef TYPE_3__ fbt_probe_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_10__ {int fbt_nentries; int loadcnt; } ;


 int ASSERT (int) ;
 int DTRACE_INVOP_LEAVE ;
 int DTRACE_INVOP_POPL_EBP ;
 int DTRACE_INVOP_PUSHL_EBP ;
 int DTRACE_INVOP_RET ;
 size_t FBT_ADDR2NDX (scalar_t__*) ;
 int FBT_ENTRY ;
 scalar_t__ FBT_LEAVE ;
 scalar_t__ FBT_MOVL_ESP_EBP0_V0 ;
 scalar_t__ FBT_MOVL_ESP_EBP0_V1 ;
 scalar_t__ FBT_MOVL_ESP_EBP1_V0 ;
 scalar_t__ FBT_MOVL_ESP_EBP1_V1 ;
 void* FBT_PATCHVAL ;
 scalar_t__ FBT_POPL_EBP ;
 scalar_t__ FBT_PUSHL_EBP ;
 scalar_t__ FBT_RET ;
 int FBT_RETURN ;
 scalar_t__ FBT_RET_IMM16 ;
 int M_FBT ;
 int M_WAITOK ;
 int M_ZERO ;
 int dtrace_instr_size (scalar_t__*) ;
 void* dtrace_probe_create (int ,char*,char const*,int ,int,TYPE_3__*) ;
 scalar_t__ fbt_excluded (char const*) ;
 int fbt_id ;
 TYPE_3__** fbt_probetab ;
 TYPE_3__* malloc (int,int ,int) ;
 scalar_t__ strcmp (char const*,char*) ;

int
fbt_provide_module_function(linker_file_t lf, int symindx,
    linker_symval_t *symval, void *opaque)
{
 char *modname = opaque;
 const char *name = symval->name;
 fbt_probe_t *fbt, *hash, *retfbt;
 int j;
 int size;
 uint8_t *instr, *limit;

 if (fbt_excluded(name))
  return (0);





 if (strcmp(name, "trap_check") == 0)
  return (0);

 size = symval->size;

 instr = (uint8_t *) symval->value;
 limit = (uint8_t *) symval->value + symval->size;


 while (instr < limit) {
  if (*instr == FBT_PUSHL_EBP)
   break;

  if ((size = dtrace_instr_size(instr)) <= 0)
   break;

  instr += size;
 }

 if (instr >= limit || *instr != FBT_PUSHL_EBP) {





  return (0);
 }
 fbt = malloc(sizeof (fbt_probe_t), M_FBT, M_WAITOK | M_ZERO);
 fbt->fbtp_name = name;
 fbt->fbtp_id = dtrace_probe_create(fbt_id, modname,
     name, FBT_ENTRY, 3, fbt);
 fbt->fbtp_patchpoint = instr;
 fbt->fbtp_ctl = lf;
 fbt->fbtp_loadcnt = lf->loadcnt;
 fbt->fbtp_rval = DTRACE_INVOP_PUSHL_EBP;
 fbt->fbtp_savedval = *instr;
 fbt->fbtp_patchval = FBT_PATCHVAL;
 fbt->fbtp_symindx = symindx;

 for (hash = fbt_probetab[FBT_ADDR2NDX(instr)]; hash != ((void*)0);
     hash = hash->fbtp_hashnext) {
  if (hash->fbtp_patchpoint == fbt->fbtp_patchpoint) {
   fbt->fbtp_tracenext = hash->fbtp_tracenext;
   hash->fbtp_tracenext = fbt;
   break;
  }
 }
 if (hash == ((void*)0)) {
  fbt->fbtp_hashnext = fbt_probetab[FBT_ADDR2NDX(instr)];
  fbt_probetab[FBT_ADDR2NDX(instr)] = fbt;
 }

 lf->fbt_nentries++;

 retfbt = ((void*)0);
again:
 if (instr >= limit)
  return (0);






 if ((size = dtrace_instr_size(instr)) <= 0)
  return (0);







 if (*instr != FBT_RET) {
  instr += size;
  goto again;
 }
 for (j = 0; j < sizeof (uintptr_t); j++) {
  caddr_t check = (caddr_t) instr - j;
  uint8_t *ptr;

  if (check < symval->value)
   break;

  if (check + sizeof (caddr_t) > (caddr_t)limit)
   continue;

  ptr = *(uint8_t **)check;

  if (ptr >= (uint8_t *) symval->value && ptr < limit) {
   instr += size;
   goto again;
  }
 }




 fbt = malloc(sizeof (fbt_probe_t), M_FBT, M_WAITOK | M_ZERO);
 fbt->fbtp_name = name;

 if (retfbt == ((void*)0)) {
  fbt->fbtp_id = dtrace_probe_create(fbt_id, modname,
      name, FBT_RETURN, 3, fbt);
 } else {
  retfbt->fbtp_probenext = fbt;
  fbt->fbtp_id = retfbt->fbtp_id;
 }

 retfbt = fbt;
 fbt->fbtp_patchpoint = instr;
 fbt->fbtp_ctl = lf;
 fbt->fbtp_loadcnt = lf->loadcnt;
 fbt->fbtp_symindx = symindx;
 ASSERT(*instr == FBT_RET);
 fbt->fbtp_rval = DTRACE_INVOP_RET;
 fbt->fbtp_roffset =
     (uintptr_t)(instr - (uint8_t *) symval->value);


 fbt->fbtp_savedval = *instr;
 fbt->fbtp_patchval = FBT_PATCHVAL;
 fbt->fbtp_hashnext = fbt_probetab[FBT_ADDR2NDX(instr)];
 fbt_probetab[FBT_ADDR2NDX(instr)] = fbt;

 lf->fbt_nentries++;

 instr += size;
 goto again;
}
