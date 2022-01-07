
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pt_query_decoder {int time; int last_time; int ip; int * event; int tnt; struct pt_decoder_function* next; } ;
struct pt_decoder_function {int (* decode ) (struct pt_query_decoder*) ;int flags; } ;


 int pdff_tip ;
 int pdff_tnt ;
 int pt_last_ip_query (int *,int *) ;
 int pt_qry_provoke_fetch_error (struct pt_query_decoder*) ;
 int pt_qry_read_ahead (struct pt_query_decoder*) ;
 int pt_qry_status_flags (struct pt_query_decoder*) ;
 scalar_t__ pt_qry_will_event (struct pt_query_decoder*) ;
 int pt_tnt_cache_is_empty (int *) ;
 int pte_bad_query ;
 int pte_eos ;
 int pte_event_ignored ;
 int pte_internal ;
 int pte_invalid ;
 int pts_ip_suppressed ;
 int stub1 (struct pt_query_decoder*) ;

int pt_qry_indirect_branch(struct pt_query_decoder *decoder, uint64_t *addr)
{
 int errcode, flags;

 if (!decoder || !addr)
  return -pte_invalid;

 flags = 0;
 for (;;) {
  const struct pt_decoder_function *dfun;

  dfun = decoder->next;
  if (!dfun)
   return pt_qry_provoke_fetch_error(decoder);

  if (!dfun->decode)
   return -pte_internal;


  if (pt_qry_will_event(decoder))
   return -pte_bad_query;




  decoder->event = ((void*)0);







  if ((dfun->flags & pdff_tnt) &&
      !pt_tnt_cache_is_empty(&decoder->tnt))
   return -pte_bad_query;


  errcode = dfun->decode(decoder);
  if (errcode)
   return errcode;


  if (decoder->event)
   return -pte_event_ignored;




  if (dfun->flags & pdff_tip) {
   uint64_t ip;




   errcode = pt_last_ip_query(&ip, &decoder->ip);
   if (errcode < 0)
    flags |= pts_ip_suppressed;
   else
    *addr = ip;

   break;
  }


  errcode = pt_qry_read_ahead(decoder);
  if (errcode)
   return errcode;
 }


 decoder->last_time = decoder->time;


 errcode = pt_qry_read_ahead(decoder);
 if ((errcode < 0) && (errcode != -pte_eos))
  return errcode;

 flags |= pt_qry_status_flags(decoder);

 return flags;
}
