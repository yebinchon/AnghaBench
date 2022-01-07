
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct pt_config {scalar_t__* begin; scalar_t__* end; } ;


 scalar_t__ const pt_ext_psb ;
 scalar_t__ const pt_opc_psb ;
 int pt_pkt_read_psb (scalar_t__ const*,struct pt_config const*) ;
 scalar_t__ const pt_psb_hi ;
 scalar_t__ pt_psb_lo ;
 int ptps_psb ;

__attribute__((used)) static const uint8_t *pt_find_psb(const uint8_t *pos,
      const struct pt_config *config)
{
 const uint8_t *begin, *end;
 int errcode;

 if (!pos || !config)
  return ((void*)0);

 begin = config->begin;
 end = config->end;






 if (*pos != pt_psb_hi)
  pos++;

 for (; (pos + 1) < end; pos += 2) {
  uint8_t hi, lo;

  hi = pos[0];
  lo = pos[1];

  if (hi != pt_psb_hi)
   break;

  if (lo != pt_psb_lo)
   break;
 }




 pos -= ptps_psb;


 if (pos < begin)
  return ((void*)0);


 if (pos[0] != pt_opc_psb || pos[1] != pt_ext_psb)
  return ((void*)0);

 errcode = pt_pkt_read_psb(pos, config);
 if (errcode < 0)
  return ((void*)0);

 return pos;
}
