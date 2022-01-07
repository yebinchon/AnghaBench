
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_query_decoder {int tnt; } ;


 scalar_t__ pt_qry_will_eos (struct pt_query_decoder const*) ;
 scalar_t__ pt_qry_will_event (struct pt_query_decoder const*) ;
 scalar_t__ pt_tnt_cache_is_empty (int *) ;
 int pte_internal ;
 int pts_eos ;
 int pts_event_pending ;

__attribute__((used)) static int pt_qry_status_flags(const struct pt_query_decoder *decoder)
{
 int flags = 0;

 if (!decoder)
  return -pte_internal;
 if (pt_tnt_cache_is_empty(&decoder->tnt)) {
  if (pt_qry_will_event(decoder))
   flags |= pts_event_pending;

  if (pt_qry_will_eos(decoder))
   flags |= pts_eos;
 }

 return flags;
}
