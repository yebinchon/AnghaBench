
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint_t ;
typedef int uint8_t ;
typedef void* uint16_t ;
struct TYPE_6__ {int p_model; } ;
typedef TYPE_1__ proc_t ;
typedef void* int8_t ;
typedef void* int32_t ;
struct TYPE_7__ {int ftt_size; int ftt_segment; scalar_t__ ftt_type; int ftt_code; int ftt_ripmode; int * ftt_instr; int ftt_modrm; void* ftt_dest; void* ftt_index; void* ftt_base; int ftt_scale; } ;
typedef TYPE_2__ fasttrap_tracepoint_t ;
typedef int fasttrap_probe_type_t ;


 int ASSERT (int) ;
 int DATAMODEL_LP64 ;
 int FASTTRAP_2_BYTE_OP ;

 int FASTTRAP_GROUP5_OP ;
 int FASTTRAP_INSTR ;
 int FASTTRAP_MAX_INSTR_SIZE ;
 int FASTTRAP_MODRM (int,size_t,size_t) ;
 size_t FASTTRAP_MODRM_MOD (int) ;
 size_t FASTTRAP_MODRM_REG (int) ;
 size_t FASTTRAP_MODRM_RM (int) ;

 void* FASTTRAP_NOREG ;
 int FASTTRAP_REX_B (int) ;
 int FASTTRAP_REX_X (int) ;
 int FASTTRAP_RIP_1 ;
 int FASTTRAP_RIP_2 ;
 int FASTTRAP_RIP_X ;
 int FASTTRAP_SEG_NONE ;
 size_t FASTTRAP_SIB_BASE (int) ;
 size_t FASTTRAP_SIB_INDEX (int) ;
 int FASTTRAP_SIB_SCALE (int) ;
 void* FASTTRAP_T_CALL ;
 scalar_t__ FASTTRAP_T_COMMON ;
 void* FASTTRAP_T_JCC ;
 scalar_t__ FASTTRAP_T_JCXZ ;
 void* FASTTRAP_T_JMP ;
 scalar_t__ FASTTRAP_T_LOOP ;
 scalar_t__ FASTTRAP_T_NOP ;
 scalar_t__ FASTTRAP_T_PUSHL_EBP ;
 scalar_t__ FASTTRAP_T_RET ;
 scalar_t__ FASTTRAP_T_RET16 ;
 size_t MIN (size_t,scalar_t__) ;
 uintptr_t PAGEOFFSET ;
 scalar_t__ PAGESIZE ;
 void* REG_RIP ;
 int bcopy (int*,int *,int) ;
 int bzero (int*,size_t) ;
 int dtrace_instr_size_isa (int*,int ,int*) ;
 void** regmap ;
 scalar_t__ uread (TYPE_1__*,int*,size_t,uintptr_t) ;

int
fasttrap_tracepoint_init(proc_t *p, fasttrap_tracepoint_t *tp, uintptr_t pc,
    fasttrap_probe_type_t type)
{
 uint8_t instr[FASTTRAP_MAX_INSTR_SIZE + 10];
 size_t len = FASTTRAP_MAX_INSTR_SIZE;
 size_t first = MIN(len, PAGESIZE - (pc & PAGEOFFSET));
 uint_t start = 0;
 int rmindex, size;
 uint8_t seg, rex = 0;
 if (uread(p, &instr[0], first, pc) != 0)
  return (-1);
 if (len > first &&
     uread(p, &instr[first], len - first, pc + first) != 0) {
  bzero(&instr[first], len - first);
  len = first;
 }




 if ((size = dtrace_instr_size_isa(instr, p->p_model, &rmindex)) <= 0)
  return (-1);




 ASSERT(-1 <= rmindex && rmindex < size);







 if (size > len)
  return (-1);

 tp->ftt_size = (uint8_t)size;
 tp->ftt_segment = FASTTRAP_SEG_NONE;





 for (;;) {
  seg = 0;
  switch (instr[start]) {
  case 131:
   seg++;

  case 136:
   seg++;

  case 137:
   seg++;

  case 138:
   seg++;

  case 139:
   seg++;

  case 140:
   seg++;

  case 134:
  case 141:
  case 135:
  case 133:
  case 132:
   if (seg != 0) {





    if (tp->ftt_segment != FASTTRAP_SEG_NONE)
     return (-1);

    tp->ftt_segment = seg;
   }
   start++;
   continue;
  }
  break;
 }





 if (p->p_model == DATAMODEL_LP64 && (instr[start] & 0xf0) == 0x40)
  rex = instr[start++];






 bcopy(instr, tp->ftt_instr, FASTTRAP_MAX_INSTR_SIZE);

 tp->ftt_type = FASTTRAP_T_COMMON;
 if (instr[start] == FASTTRAP_2_BYTE_OP) {
  switch (instr[start + 1]) {
  case 170:
  case 173:
  case 181:
  case 182:
  case 179:
  case 174:
  case 180:
  case 183:
  case 168:
  case 171:
  case 169:
  case 172:
  case 176:
  case 177:
  case 175:
  case 178:
   tp->ftt_type = FASTTRAP_T_JCC;
   tp->ftt_code = (instr[start + 1] & 0x0f) | 148;
   tp->ftt_dest = pc + tp->ftt_size +

       *(int32_t *)&instr[start + 2];
   break;
  }
 } else if (instr[start] == FASTTRAP_GROUP5_OP) {
  uint_t mod = FASTTRAP_MODRM_MOD(instr[start + 1]);
  uint_t reg = FASTTRAP_MODRM_REG(instr[start + 1]);
  uint_t rm = FASTTRAP_MODRM_RM(instr[start + 1]);

  if (reg == 2 || reg == 4) {
   uint_t i, sz;

   if (reg == 2)
    tp->ftt_type = FASTTRAP_T_CALL;
   else
    tp->ftt_type = FASTTRAP_T_JMP;

   if (mod == 3)
    tp->ftt_code = 2;
   else
    tp->ftt_code = 1;

   ASSERT(p->p_model == DATAMODEL_LP64 || rex == 0);






   if (mod != 3 && rm == 4) {
    uint8_t sib = instr[start + 2];
    uint_t index = FASTTRAP_SIB_INDEX(sib);
    uint_t base = FASTTRAP_SIB_BASE(sib);

    tp->ftt_scale = FASTTRAP_SIB_SCALE(sib);

    tp->ftt_index = (index == 4) ?
        FASTTRAP_NOREG :
        regmap[index | (FASTTRAP_REX_X(rex) << 3)];
    tp->ftt_base = (mod == 0 && base == 5) ?
        FASTTRAP_NOREG :
        regmap[base | (FASTTRAP_REX_B(rex) << 3)];

    i = 3;
    sz = mod == 1 ? 1 : 4;
   } else {






    if (mod == 0 && rm == 5) {

     if (p->p_model == DATAMODEL_LP64)
      tp->ftt_base = REG_RIP;
     else

      tp->ftt_base = FASTTRAP_NOREG;
     sz = 4;
    } else {
     uint8_t base = rm |
         (FASTTRAP_REX_B(rex) << 3);

     tp->ftt_base = regmap[base];
     sz = mod == 1 ? 1 : mod == 2 ? 4 : 0;
    }
    tp->ftt_index = FASTTRAP_NOREG;
    i = 2;
   }

   if (sz == 1) {
    tp->ftt_dest = *(int8_t *)&instr[start + i];
   } else if (sz == 4) {

    tp->ftt_dest = *(int32_t *)&instr[start + i];
   } else {
    tp->ftt_dest = 0;
   }
  }
 } else {
  switch (instr[start]) {
  case 129:
   tp->ftt_type = FASTTRAP_T_RET;
   break;

  case 128:
   tp->ftt_type = FASTTRAP_T_RET16;

   tp->ftt_dest = *(uint16_t *)&instr[start + 1];
   break;

  case 148:
  case 151:
  case 162:
  case 163:
  case 159:
  case 152:
  case 161:
  case 164:
  case 146:
  case 149:
  case 147:
  case 150:
  case 156:
  case 157:
  case 155:
  case 158:
   tp->ftt_type = FASTTRAP_T_JCC;
   tp->ftt_code = instr[start];
   tp->ftt_dest = pc + tp->ftt_size +
       (int8_t)instr[start + 1];
   break;

  case 144:
  case 143:
  case 145:
   tp->ftt_type = FASTTRAP_T_LOOP;
   tp->ftt_code = instr[start];
   tp->ftt_dest = pc + tp->ftt_size +
       (int8_t)instr[start + 1];
   break;

  case 160:
   tp->ftt_type = FASTTRAP_T_JCXZ;
   tp->ftt_dest = pc + tp->ftt_size +
       (int8_t)instr[start + 1];
   break;

  case 167:
   tp->ftt_type = FASTTRAP_T_CALL;
   tp->ftt_dest = pc + tp->ftt_size +

       *(int32_t *)&instr[start + 1];
   tp->ftt_code = 0;
   break;

  case 154:
   tp->ftt_type = FASTTRAP_T_JMP;
   tp->ftt_dest = pc + tp->ftt_size +

       *(int32_t *)&instr[start + 1];
   break;
  case 153:
   tp->ftt_type = FASTTRAP_T_JMP;
   tp->ftt_dest = pc + tp->ftt_size +
       (int8_t)instr[start + 1];
   break;

  case 130:
   if (start == 0)
    tp->ftt_type = FASTTRAP_T_PUSHL_EBP;
   break;

  case 142:

   ASSERT(p->p_model == DATAMODEL_LP64 || rex == 0);







   if (FASTTRAP_REX_B(rex) == 0)

    tp->ftt_type = FASTTRAP_T_NOP;
   break;

  case 165:




   ASSERT(instr[start] == FASTTRAP_INSTR);
   return (-1);

  case 166:
   return (-1);
  }
 }


 if (p->p_model == DATAMODEL_LP64 && tp->ftt_type == FASTTRAP_T_COMMON) {
  if (rmindex != -1) {
   uint_t mod = FASTTRAP_MODRM_MOD(instr[rmindex]);
   uint_t reg = FASTTRAP_MODRM_REG(instr[rmindex]);
   uint_t rm = FASTTRAP_MODRM_RM(instr[rmindex]);

   ASSERT(rmindex > start);

   if (mod == 0 && rm == 5) {
    if (reg != 0) {
     tp->ftt_ripmode = FASTTRAP_RIP_1 |
         (FASTTRAP_RIP_X *
         FASTTRAP_REX_B(rex));
     rm = 0;
    } else {
     tp->ftt_ripmode = FASTTRAP_RIP_2 |
         (FASTTRAP_RIP_X *
         FASTTRAP_REX_B(rex));
     rm = 1;
    }

    tp->ftt_modrm = tp->ftt_instr[rmindex];
    tp->ftt_instr[rmindex] =
        FASTTRAP_MODRM(2, reg, rm);
   }
  }
 }


 return (0);
}
