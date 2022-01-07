
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_query_decoder {int time; int last_time; int * event; struct pt_decoder_function* next; } ;
struct pt_decoder_function {int (* decode ) (struct pt_query_decoder*) ;int flags; } ;


 int pdff_tip ;
 int pdff_tnt ;
 int pt_qry_provoke_fetch_error (struct pt_query_decoder*) ;
 int pt_qry_read_ahead (struct pt_query_decoder*) ;
 scalar_t__ pt_qry_will_event (struct pt_query_decoder*) ;
 int pte_bad_query ;
 int pte_eos ;
 int pte_event_ignored ;
 int pte_internal ;
 int stub1 (struct pt_query_decoder*) ;

__attribute__((used)) static int pt_qry_cache_tnt(struct pt_query_decoder *decoder)
{
 int errcode;

 if (!decoder)
  return -pte_internal;

 for (;;) {
  const struct pt_decoder_function *dfun;

  dfun = decoder->next;
  if (!dfun)
   return pt_qry_provoke_fetch_error(decoder);

  if (!dfun->decode)
   return -pte_internal;


  if (pt_qry_will_event(decoder))
   return -pte_bad_query;


  if (dfun->flags & pdff_tip)
   return -pte_bad_query;




  decoder->event = ((void*)0);


  errcode = dfun->decode(decoder);
  if (errcode)
   return errcode;


  if (decoder->event)
   return -pte_event_ignored;


  if (dfun->flags & pdff_tnt)
   break;


  errcode = pt_qry_read_ahead(decoder);
  if (errcode)
   return errcode;
 }


 decoder->last_time = decoder->time;


 errcode = pt_qry_read_ahead(decoder);
 if ((errcode < 0) && (errcode != -pte_eos))
  return errcode;

 return 0;
}
