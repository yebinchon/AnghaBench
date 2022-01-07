
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_8__ {char* name; scalar_t__ value; scalar_t__ size; } ;
typedef TYPE_1__ linker_symval_t ;
typedef TYPE_2__* linker_file_t ;
struct TYPE_10__ {char const* fbtp_name; scalar_t__* fbtp_patchpoint; int fbtp_symindx; uintptr_t fbtp_roffset; void* fbtp_hashnext; void* fbtp_patchval; scalar_t__ fbtp_savedval; int fbtp_rval; int fbtp_loadcnt; TYPE_2__* fbtp_ctl; void* fbtp_id; struct TYPE_10__* fbtp_probenext; } ;
typedef TYPE_3__ fbt_probe_t ;
struct TYPE_9__ {int fbt_nentries; int loadcnt; } ;


 int DTRACE_INVOP_BCTR ;
 int DTRACE_INVOP_BLR ;
 int DTRACE_INVOP_JUMP ;
 int DTRACE_INVOP_MFLR_R0 ;
 size_t FBT_ADDR2NDX (scalar_t__*) ;
 int FBT_AFRAMES ;
 scalar_t__ FBT_BCTR ;
 scalar_t__ FBT_BLR ;
 int FBT_ENTRY ;
 scalar_t__ FBT_IS_JUMP (scalar_t__) ;
 scalar_t__ FBT_MFLR_R0 ;
 scalar_t__ FBT_MTLR_R0 ;
 void* FBT_PATCHVAL ;
 int FBT_RETURN ;
 int M_FBT ;
 int M_WAITOK ;
 int M_ZERO ;
 void* dtrace_probe_create (int ,char*,char const*,int ,int ,TYPE_3__*) ;
 scalar_t__ fbt_excluded (char const*) ;
 int fbt_id ;
 void** fbt_probetab ;
 TYPE_3__* malloc (int,int ,int) ;

int
fbt_provide_module_function(linker_file_t lf, int symindx,
    linker_symval_t *symval, void *opaque)
{
 char *modname = opaque;
 const char *name = symval->name;
 fbt_probe_t *fbt, *retfbt;
 int j;
 uint32_t *instr, *limit;
 if (fbt_excluded(name))
  return (0);

 instr = (uint32_t *) symval->value;
 limit = (uint32_t *) (symval->value + symval->size);

 for (; instr < limit; instr++)
  if (*instr == FBT_MFLR_R0)
   break;

 if (*instr != FBT_MFLR_R0)
  return (0);

 fbt = malloc(sizeof (fbt_probe_t), M_FBT, M_WAITOK | M_ZERO);
 fbt->fbtp_name = name;
 fbt->fbtp_id = dtrace_probe_create(fbt_id, modname,
     name, FBT_ENTRY, FBT_AFRAMES, fbt);
 fbt->fbtp_patchpoint = instr;
 fbt->fbtp_ctl = lf;
 fbt->fbtp_loadcnt = lf->loadcnt;
 fbt->fbtp_savedval = *instr;
 fbt->fbtp_patchval = FBT_PATCHVAL;
 fbt->fbtp_rval = DTRACE_INVOP_MFLR_R0;
 fbt->fbtp_symindx = symindx;

 fbt->fbtp_hashnext = fbt_probetab[FBT_ADDR2NDX(instr)];
 fbt_probetab[FBT_ADDR2NDX(instr)] = fbt;

 lf->fbt_nentries++;

 retfbt = ((void*)0);
again:
 if (instr >= limit)
  return (0);
 {
  uint32_t *ptr;

  ptr = *(uint32_t **)instr;

  if (ptr >= (uint32_t *) symval->value && ptr < limit) {
   instr++;
   goto again;
  }
 }

 if (*instr != FBT_MTLR_R0) {
  instr++;
  goto again;
 }

 instr++;

 for (j = 0; j < 12 && instr < limit; j++, instr++) {
  if ((*instr == FBT_BCTR) || (*instr == FBT_BLR) ||
      FBT_IS_JUMP(*instr))
   break;
 }

 if (!(*instr == FBT_BCTR || *instr == FBT_BLR || FBT_IS_JUMP(*instr)))
  goto again;




 fbt = malloc(sizeof (fbt_probe_t), M_FBT, M_WAITOK | M_ZERO);
 fbt->fbtp_name = name;

 if (retfbt == ((void*)0)) {
  fbt->fbtp_id = dtrace_probe_create(fbt_id, modname,
      name, FBT_RETURN, FBT_AFRAMES, fbt);
 } else {
  retfbt->fbtp_probenext = fbt;
  fbt->fbtp_id = retfbt->fbtp_id;
 }

 retfbt = fbt;
 fbt->fbtp_patchpoint = instr;
 fbt->fbtp_ctl = lf;
 fbt->fbtp_loadcnt = lf->loadcnt;
 fbt->fbtp_symindx = symindx;

 if (*instr == FBT_BCTR)
  fbt->fbtp_rval = DTRACE_INVOP_BCTR;
 else if (*instr == FBT_BLR)
  fbt->fbtp_rval = DTRACE_INVOP_BLR;
 else
  fbt->fbtp_rval = DTRACE_INVOP_JUMP;

 fbt->fbtp_roffset =
     (uintptr_t)((uint8_t *)instr - (uint8_t *)symval->value);

 fbt->fbtp_savedval = *instr;
 fbt->fbtp_patchval = FBT_PATCHVAL;
 fbt->fbtp_hashnext = fbt_probetab[FBT_ADDR2NDX(instr)];
 fbt_probetab[FBT_ADDR2NDX(instr)] = fbt;

 lf->fbt_nentries++;

 instr += 4;
 goto again;
}
