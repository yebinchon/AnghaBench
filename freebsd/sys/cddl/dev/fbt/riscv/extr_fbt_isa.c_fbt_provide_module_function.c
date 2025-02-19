
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_8__ {char* name; scalar_t__ size; scalar_t__ value; } ;
typedef TYPE_1__ linker_symval_t ;
typedef TYPE_2__* linker_file_t ;
struct TYPE_10__ {char const* fbtp_name; void** fbtp_patchpoint; int fbtp_patchval; int fbtp_rval; int fbtp_symindx; void* fbtp_hashnext; void* fbtp_savedval; int fbtp_loadcnt; TYPE_2__* fbtp_ctl; void* fbtp_id; struct TYPE_10__* fbtp_probenext; } ;
typedef TYPE_3__ fbt_probe_t ;
struct TYPE_9__ {int fbt_nentries; int loadcnt; } ;


 int DTRACE_INVOP_C_RET ;
 int DTRACE_INVOP_C_SDSP ;
 int DTRACE_INVOP_RET ;
 int DTRACE_INVOP_SD ;
 size_t FBT_ADDR2NDX (void**) ;
 int FBT_C_PATCHVAL ;
 int FBT_ENTRY ;
 int FBT_PATCHVAL ;
 int FBT_RETURN ;
 int IMM_MASK ;
 int MASK_JALR ;
 int MASK_SD ;
 int MATCH_JALR ;
 int MATCH_SD ;
 int M_FBT ;
 int M_WAITOK ;
 int M_ZERO ;
 int RD_MASK ;
 int RS1_MASK ;
 int RS1_SHIFT ;
 int RS1_SP ;
 int RS2_MASK ;
 int RS2_RA ;
 int X_RA ;
 scalar_t__ check_c_ret (void***) ;
 scalar_t__ check_c_sdsp (void***) ;
 void* dtrace_probe_create (int ,char*,char const*,int ,int,TYPE_3__*) ;
 scalar_t__ fbt_excluded (char const*) ;
 int fbt_id ;
 void** fbt_probetab ;
 TYPE_3__* malloc (int,int ,int) ;
 scalar_t__ match_opcode (void*,int,int) ;

int
fbt_provide_module_function(linker_file_t lf, int symindx,
    linker_symval_t *symval, void *opaque)
{
 fbt_probe_t *fbt, *retfbt;
 uint32_t *instr, *limit;
 const char *name;
 char *modname;
 int patchval;
 int rval;

 modname = opaque;
 name = symval->name;


 if (fbt_excluded(name))
  return (0);

 instr = (uint32_t *)(symval->value);
 limit = (uint32_t *)(symval->value + symval->size);


 for (; instr < limit; instr++) {

  if (match_opcode(*instr, (MATCH_SD | RS2_RA | RS1_SP),
      (MASK_SD | RS2_MASK | RS1_MASK))) {
   rval = DTRACE_INVOP_SD;
   patchval = FBT_PATCHVAL;
   break;
  }


  if (check_c_sdsp(&instr)) {
   rval = DTRACE_INVOP_C_SDSP;
   patchval = FBT_C_PATCHVAL;
   break;
  }
 }

 if (instr >= limit)
  return (0);

 fbt = malloc(sizeof (fbt_probe_t), M_FBT, M_WAITOK | M_ZERO);
 fbt->fbtp_name = name;
 fbt->fbtp_id = dtrace_probe_create(fbt_id, modname,
     name, FBT_ENTRY, 3, fbt);
 fbt->fbtp_patchpoint = instr;
 fbt->fbtp_ctl = lf;
 fbt->fbtp_loadcnt = lf->loadcnt;
 fbt->fbtp_savedval = *instr;
 fbt->fbtp_patchval = patchval;
 fbt->fbtp_rval = rval;
 fbt->fbtp_symindx = symindx;

 fbt->fbtp_hashnext = fbt_probetab[FBT_ADDR2NDX(instr)];
 fbt_probetab[FBT_ADDR2NDX(instr)] = fbt;

 lf->fbt_nentries++;

 retfbt = ((void*)0);
again:
 for (; instr < limit; instr++) {

  if (match_opcode(*instr, (MATCH_JALR | (X_RA << RS1_SHIFT)),
      (MASK_JALR | RD_MASK | RS1_MASK | IMM_MASK))) {
   rval = DTRACE_INVOP_RET;
   patchval = FBT_PATCHVAL;
   break;
  }


  if (check_c_ret(&instr)) {
   rval = DTRACE_INVOP_C_RET;
   patchval = FBT_C_PATCHVAL;
   break;
  }
 }

 if (instr >= limit)
  return (0);




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
 fbt->fbtp_rval = rval;
 fbt->fbtp_savedval = *instr;
 fbt->fbtp_patchval = patchval;
 fbt->fbtp_hashnext = fbt_probetab[FBT_ADDR2NDX(instr)];
 fbt_probetab[FBT_ADDR2NDX(instr)] = fbt;

 lf->fbt_nentries++;

 instr++;
 goto again;
}
