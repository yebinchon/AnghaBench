
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct pt_config {scalar_t__* begin; scalar_t__* end; } ;


 scalar_t__ const pt_ext_psb ;
 scalar_t__ const pt_opc_psb ;
 int pt_pkt_read_psb (scalar_t__ const*,struct pt_config const*) ;
 int pt_sync_within_bounds (scalar_t__ const*,scalar_t__ const*,scalar_t__ const*) ;
 int pte_eos ;
 int pte_internal ;
 int pte_nosync ;

int pt_sync_set(const uint8_t **sync, const uint8_t *pos,
  const struct pt_config *config)
{
 const uint8_t *begin, *end;
 int errcode;

 if (!sync || !pos || !config)
  return -pte_internal;

 begin = config->begin;
 end = config->end;

 if (!pt_sync_within_bounds(pos, begin, end))
  return -pte_eos;

 if (end < pos + 2)
  return -pte_eos;


 if (pos[0] != pt_opc_psb || pos[1] != pt_ext_psb)
  return -pte_nosync;

 errcode = pt_pkt_read_psb(pos, config);
 if (errcode < 0)
  return errcode;

 *sync = pos;

 return 0;
}
