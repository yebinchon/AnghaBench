
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {char* name; scalar_t__ value; scalar_t__ size; } ;
typedef TYPE_1__ linker_symval_t ;
typedef TYPE_2__* linker_file_t ;
struct TYPE_10__ {char const* fbtp_name; int* fbtp_patchpoint; int fbtp_savedval; int fbtp_symindx; void* fbtp_hashnext; void* fbtp_patchval; int fbtp_rval; int fbtp_loadcnt; TYPE_2__* fbtp_ctl; void* fbtp_id; struct TYPE_10__* fbtp_probenext; } ;
typedef TYPE_3__ fbt_probe_t ;
struct TYPE_9__ {int fbt_nentries; int loadcnt; } ;


 int DTRACE_INVOP_B ;
 int DTRACE_INVOP_POPM ;
 int DTRACE_INVOP_PUSHM ;
 size_t FBT_ADDR2NDX (int*) ;
 void* FBT_BREAKPOINT ;
 int FBT_ENTRY ;
 int FBT_JUMP ;
 int FBT_POPM ;
 int FBT_PUSHM ;
 int FBT_RETURN ;
 int FBT_SUBSP ;
 int LR ;
 int M_FBT ;
 int M_WAITOK ;
 int M_ZERO ;
 void* dtrace_probe_create (int ,char*,char const*,int ,int,TYPE_3__*) ;
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
 uint32_t *instr, *limit;
 int popm;

 if (fbt_excluded(name))
  return (0);

 instr = (uint32_t *)symval->value;
 limit = (uint32_t *)(symval->value + symval->size);





 if ((*instr & 0xfffff000) == FBT_SUBSP)
  instr++;




 if ((*instr & 0xffff0000) != FBT_PUSHM ||
     (*instr & (1 << LR)) == 0)
  return (0);

 fbt = malloc(sizeof (fbt_probe_t), M_FBT, M_WAITOK | M_ZERO);
 fbt->fbtp_name = name;
 fbt->fbtp_id = dtrace_probe_create(fbt_id, modname,
     name, FBT_ENTRY, 2, fbt);
 fbt->fbtp_patchpoint = instr;
 fbt->fbtp_ctl = lf;
 fbt->fbtp_loadcnt = lf->loadcnt;
 fbt->fbtp_savedval = *instr;
 fbt->fbtp_patchval = FBT_BREAKPOINT;
 fbt->fbtp_rval = DTRACE_INVOP_PUSHM;
 fbt->fbtp_symindx = symindx;

 fbt->fbtp_hashnext = fbt_probetab[FBT_ADDR2NDX(instr)];
 fbt_probetab[FBT_ADDR2NDX(instr)] = fbt;

 lf->fbt_nentries++;

 popm = FBT_POPM | ((*instr) & 0x3FFF) | 0x8000;

 retfbt = ((void*)0);
again:
 for (; instr < limit; instr++) {
  if (*instr == popm)
   break;
  else if ((*instr & 0xff000000) == FBT_JUMP) {
   uint32_t *target, *start;
   int offset;

   offset = (*instr & 0xffffff);
   offset <<= 8;
   offset /= 64;
   target = instr + (2 + offset);
   start = (uint32_t *)symval->value;
   if (target >= limit || target < start)
    break;
  }
 }

 if (instr >= limit)
  return (0);




 fbt = malloc(sizeof (fbt_probe_t), M_FBT, M_WAITOK | M_ZERO);
 fbt->fbtp_name = name;
 if (retfbt == ((void*)0)) {
  fbt->fbtp_id = dtrace_probe_create(fbt_id, modname,
      name, FBT_RETURN, 2, fbt);
 } else {
  retfbt->fbtp_probenext = fbt;
  fbt->fbtp_id = retfbt->fbtp_id;
 }
 retfbt = fbt;

 fbt->fbtp_patchpoint = instr;
 fbt->fbtp_ctl = lf;
 fbt->fbtp_loadcnt = lf->loadcnt;
 fbt->fbtp_symindx = symindx;
 if ((*instr & 0xff000000) == FBT_JUMP)
  fbt->fbtp_rval = DTRACE_INVOP_B;
 else
  fbt->fbtp_rval = DTRACE_INVOP_POPM;
 fbt->fbtp_savedval = *instr;
 fbt->fbtp_patchval = FBT_BREAKPOINT;
 fbt->fbtp_hashnext = fbt_probetab[FBT_ADDR2NDX(instr)];
 fbt_probetab[FBT_ADDR2NDX(instr)] = fbt;

 lf->fbt_nentries++;

 instr++;
 goto again;
}
