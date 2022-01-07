
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
struct TYPE_4__ {scalar_t__ dtdv_scope; int dtdv_id; } ;
typedef TYPE_1__ dtrace_difv_t ;
struct TYPE_5__ {int dtdo_varlen; int dtdo_len; int * dtdo_buf; TYPE_1__* dtdo_vartab; } ;
typedef TYPE_2__ dtrace_difo_t ;


 scalar_t__ DIFV_SCOPE_GLOBAL ;
 scalar_t__ DIF_INSTR_OP (int ) ;
 scalar_t__ DIF_OP_LDGA ;
 scalar_t__ DIF_OP_LDSB ;
 scalar_t__ DIF_OP_LDX ;
 scalar_t__ DIF_OP_RLDSB ;
 scalar_t__ DIF_OP_RLDX ;
 scalar_t__ DIF_OP_STTS ;
 scalar_t__ DIF_OP_ULDSB ;
 scalar_t__ DIF_OP_ULDX ;







__attribute__((used)) static int
dtrace_difo_cacheable(dtrace_difo_t *dp)
{
 int i;

 if (dp == ((void*)0))
  return (0);

 for (i = 0; i < dp->dtdo_varlen; i++) {
  dtrace_difv_t *v = &dp->dtdo_vartab[i];

  if (v->dtdv_scope != DIFV_SCOPE_GLOBAL)
   continue;

  switch (v->dtdv_id) {
  case 133:
  case 130:
  case 129:
  case 132:
  case 131:
  case 128:
   break;

  default:
   return (0);
  }
 }






 for (i = 0; i < dp->dtdo_len; i++) {
  uint_t op = DIF_INSTR_OP(dp->dtdo_buf[i]);

  if ((op >= DIF_OP_LDSB && op <= DIF_OP_LDX) ||
      (op >= DIF_OP_ULDSB && op <= DIF_OP_ULDX) ||
      (op >= DIF_OP_RLDSB && op <= DIF_OP_RLDX) ||
      op == DIF_OP_LDGA || op == DIF_OP_STTS)
   return (0);
 }

 return (1);
}
