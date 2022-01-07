
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int proc_t ;
typedef int instr ;
struct TYPE_3__ {scalar_t__ ftt_type; int ftt_instr; int ftt_dest; int ftt_flags; void* ftt_bi; void* ftt_bo; } ;
typedef TYPE_1__ fasttrap_tracepoint_t ;
typedef int fasttrap_probe_type_t ;


 int FASTTRAP_F_RETMAYBE ;
 scalar_t__ FASTTRAP_T_B ;
 scalar_t__ FASTTRAP_T_BC ;
 void* FASTTRAP_T_BCTR ;
 scalar_t__ FASTTRAP_T_COMMON ;
 void* FASTTRAP_T_NOP ;
 scalar_t__ FASTTRAP_T_RESTORE ;
 int OP (int) ;
 scalar_t__ OP3 (int) ;
 scalar_t__ OP3_RETURN ;
 int OPX (int) ;
 void* OP_BI (int) ;
 void* OP_BO (int) ;
 int OP_RA (int) ;
 int OP_RB (int) ;
 int OP_RS (int) ;
 scalar_t__ uread (int *,int*,int,uintptr_t) ;

int
fasttrap_tracepoint_init(proc_t *p, fasttrap_tracepoint_t *tp, uintptr_t pc,
    fasttrap_probe_type_t type)
{
 uint32_t instr;
 if (uread(p, &instr, 4, pc) != 0)
  return (-1);
 tp->ftt_type = FASTTRAP_T_COMMON;
 tp->ftt_instr = instr;

 switch (OP(instr)) {

 case 0:
 case 1:
 case 2:
 case 4:
 case 5:
 case 6:
 case 30:
 case 39:
 case 58:
 case 62:
 case 3:
  return (-1);
 case 31:
  if (OPX(instr) == 4)
   return (-1);
  else if (OPX(instr) == 444 && OP_RS(instr) == OP_RA(instr) &&
      OP_RS(instr) == OP_RB(instr))
   tp->ftt_type = FASTTRAP_T_NOP;
  break;
 case 16:
  tp->ftt_type = FASTTRAP_T_BC;
  tp->ftt_dest = instr & 0x0000FFFC;
  if (instr & 0x00008000)
   tp->ftt_dest |= 0xFFFF0000;

  if (!(instr & 0x02))
   tp->ftt_dest += pc;
  tp->ftt_bo = OP_BO(instr);
  tp->ftt_bi = OP_BI(instr);
  break;
 case 18:
  tp->ftt_type = FASTTRAP_T_B;
  tp->ftt_dest = instr & 0x03FFFFFC;
  if (instr & 0x02000000)
   tp->ftt_dest |= 0xFC000000;

  if (!(instr & 0x02))
   tp->ftt_dest += pc;
  break;
 case 19:
  switch (OPX(instr)) {
  case 528:
   tp->ftt_type = FASTTRAP_T_BCTR;
   tp->ftt_bo = OP_BO(instr);
   tp->ftt_bi = OP_BI(instr);
   break;
  case 16:
   tp->ftt_type = FASTTRAP_T_BCTR;
   tp->ftt_bo = OP_BO(instr);
   tp->ftt_bi = OP_BI(instr);
   break;
  };
  break;
 case 24:
  if (OP_RS(instr) == OP_RA(instr) &&
      (instr & 0x0000FFFF) == 0)
   tp->ftt_type = FASTTRAP_T_NOP;
  break;
 };
 return (0);
}
