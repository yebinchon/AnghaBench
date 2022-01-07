
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t uint_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uchar_t ;
struct TYPE_10__ {size_t dtds_chunksize; } ;
struct TYPE_11__ {TYPE_2__ dtvs_dynvars; } ;
typedef TYPE_3__ dtrace_vstate_t ;
struct TYPE_12__ {size_t dttk_size; } ;
typedef TYPE_4__ dtrace_key_t ;
typedef int dtrace_dynvar_t ;
struct TYPE_9__ {scalar_t__ dtdt_size; } ;
struct TYPE_13__ {size_t dtdv_id; scalar_t__ dtdv_scope; TYPE_1__ dtdv_type; } ;
typedef TYPE_5__ dtrace_difv_t ;
struct TYPE_14__ {size_t dtdo_len; scalar_t__* dtdo_inttab; size_t dtdo_varlen; TYPE_5__* dtdo_vartab; int * dtdo_buf; } ;
typedef TYPE_6__ dtrace_difo_t ;
typedef int dif_instr_t ;


 scalar_t__ DIFV_SCOPE_GLOBAL ;
 scalar_t__ DIFV_SCOPE_THREAD ;
 size_t DIF_DTR_NREGS ;
 size_t DIF_INSTR_INTEGER (int ) ;
 int const DIF_INSTR_OP (int ) ;
 size_t DIF_INSTR_R1 (int ) ;
 size_t DIF_INSTR_RD (int ) ;
 size_t DIF_INSTR_VAR (int ) ;
 size_t DIF_TYPE_STRING ;
 scalar_t__ LONG_MAX ;
 size_t P2ROUNDUP (size_t,int) ;
 size_t dtrace_strsize_default ;

__attribute__((used)) static void
dtrace_difo_chunksize(dtrace_difo_t *dp, dtrace_vstate_t *vstate)
{
 uint64_t sval = 0;
 dtrace_key_t tupregs[DIF_DTR_NREGS + 2];
 const dif_instr_t *text = dp->dtdo_buf;
 uint_t pc, srd = 0;
 uint_t ttop = 0;
 size_t size, ksize;
 uint_t id, i;

 for (pc = 0; pc < dp->dtdo_len; pc++) {
  dif_instr_t instr = text[pc];
  uint_t op = DIF_INSTR_OP(instr);
  uint_t rd = DIF_INSTR_RD(instr);
  uint_t r1 = DIF_INSTR_R1(instr);
  uint_t nkeys = 0;
  uchar_t scope = 0;

  dtrace_key_t *key = tupregs;

  switch (op) {
  case 131:
   sval = dp->dtdo_inttab[DIF_INSTR_INTEGER(instr)];
   srd = rd;
   continue;

  case 128:
   key = &tupregs[DIF_DTR_NREGS];
   key[0].dttk_size = 0;
   key[1].dttk_size = 0;
   nkeys = 2;
   scope = DIFV_SCOPE_THREAD;
   break;

  case 130:
  case 129:
   nkeys = ttop;

   if (DIF_INSTR_OP(instr) == 129)
    key[nkeys++].dttk_size = 0;

   key[nkeys++].dttk_size = 0;

   if (op == 129) {
    scope = DIFV_SCOPE_THREAD;
   } else {
    scope = DIFV_SCOPE_GLOBAL;
   }

   break;

  case 133:
   if (ttop == DIF_DTR_NREGS)
    return;

   if ((srd == 0 || sval == 0) && r1 == DIF_TYPE_STRING) {






    tupregs[ttop++].dttk_size =
        dtrace_strsize_default;
   } else {
    if (srd == 0)
     return;

    if (sval > LONG_MAX)
     return;

    tupregs[ttop++].dttk_size = sval;
   }

   break;

  case 132:
   if (ttop == DIF_DTR_NREGS)
    return;

   tupregs[ttop++].dttk_size = 0;
   break;

  case 135:
   ttop = 0;
   break;

  case 134:
   if (ttop != 0)
    ttop--;
   break;
  }

  sval = 0;
  srd = 0;

  if (nkeys == 0)
   continue;




  for (ksize = 0, i = 0; i < nkeys; i++)
   ksize += P2ROUNDUP(key[i].dttk_size, sizeof (uint64_t));

  size = sizeof (dtrace_dynvar_t);
  size += sizeof (dtrace_key_t) * (nkeys - 1);
  size += ksize;




  id = DIF_INSTR_VAR(instr);

  for (i = 0; i < dp->dtdo_varlen; i++) {
   dtrace_difv_t *v = &dp->dtdo_vartab[i];

   if (v->dtdv_id == id && v->dtdv_scope == scope) {
    size += v->dtdv_type.dtdt_size;
    break;
   }
  }

  if (i == dp->dtdo_varlen)
   return;





  size = P2ROUNDUP(size, sizeof (uint64_t));





  if (size > LONG_MAX)
   return;




  if (size < ksize || size < sizeof (dtrace_dynvar_t))
   return;

  if (size > vstate->dtvs_dynvars.dtds_chunksize)
   vstate->dtvs_dynvars.dtds_chunksize = size;
 }
}
