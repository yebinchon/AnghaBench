
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef uintptr_t uint64_t ;
struct TYPE_14__ {uintptr_t dtds_size; int dtds_hashsize; uintptr_t dtds_chunksize; TYPE_4__* dtds_base; } ;
struct TYPE_11__ {int dtvs_nglobals; int dtvs_globals; int dtvs_nlocals; int dtvs_locals; TYPE_5__ dtvs_dynvars; } ;
typedef TYPE_2__ dtrace_vstate_t ;
struct TYPE_12__ {uintptr_t dtms_scratch_size; TYPE_4__* dtms_scratch_base; } ;
typedef TYPE_3__ dtrace_mstate_t ;
typedef int dtrace_key_t ;
struct TYPE_10__ {int dtt_nkeys; } ;
struct TYPE_13__ {scalar_t__ dtdv_hashval; TYPE_1__ dtdv_tuple; } ;
typedef TYPE_4__ dtrace_dynvar_t ;
typedef int dtrace_dynhash_t ;
typedef TYPE_5__ dtrace_dstate_t ;


 scalar_t__ DTRACE_DYNHASH_FREE ;
 scalar_t__ DTRACE_INRANGE (uintptr_t,size_t,TYPE_4__*,uintptr_t) ;
 int DTRACE_RANGE_REMAIN (size_t*,uintptr_t,TYPE_4__*,uintptr_t) ;
 scalar_t__ dtrace_canstore_statvar (uintptr_t,size_t,size_t*,int ,int ) ;

__attribute__((used)) static int
dtrace_canstore_remains(uint64_t addr, size_t sz, size_t *remain,
    dtrace_mstate_t *mstate, dtrace_vstate_t *vstate)
{



 if (DTRACE_INRANGE(addr, sz, mstate->dtms_scratch_base,
     mstate->dtms_scratch_size)) {
  DTRACE_RANGE_REMAIN(remain, addr, mstate->dtms_scratch_base,
      mstate->dtms_scratch_size);
  return (1);
 }






 if (DTRACE_INRANGE(addr, sz, vstate->dtvs_dynvars.dtds_base,
     vstate->dtvs_dynvars.dtds_size)) {
  dtrace_dstate_t *dstate = &vstate->dtvs_dynvars;
  uintptr_t base = (uintptr_t)dstate->dtds_base +
      (dstate->dtds_hashsize * sizeof (dtrace_dynhash_t));
  uintptr_t chunkoffs;
  dtrace_dynvar_t *dvar;
  if (addr < base)
   return (0);

  chunkoffs = (addr - base) % dstate->dtds_chunksize;

  if (chunkoffs < sizeof (dtrace_dynvar_t))
   return (0);

  if (chunkoffs + sz > dstate->dtds_chunksize)
   return (0);

  dvar = (dtrace_dynvar_t *)((uintptr_t)addr - chunkoffs);

  if (dvar->dtdv_hashval == DTRACE_DYNHASH_FREE)
   return (0);

  if (chunkoffs < sizeof (dtrace_dynvar_t) +
      ((dvar->dtdv_tuple.dtt_nkeys - 1) * sizeof (dtrace_key_t)))
   return (0);

  DTRACE_RANGE_REMAIN(remain, addr, dvar, dstate->dtds_chunksize);
  return (1);
 }





 if (dtrace_canstore_statvar(addr, sz, remain,
     vstate->dtvs_locals, vstate->dtvs_nlocals))
  return (1);

 if (dtrace_canstore_statvar(addr, sz, remain,
     vstate->dtvs_globals, vstate->dtvs_nglobals))
  return (1);

 return (0);
}
