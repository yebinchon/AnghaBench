
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int end; } ;
struct pt_query_decoder {struct pt_decoder_function* next; TYPE_1__ config; int pos; } ;
struct pt_decoder_function {int (* decode ) (struct pt_query_decoder*) ;int flags; } ;


 int pdff_tip ;
 int pdff_tnt ;
 int pt_df_fetch (struct pt_decoder_function**,int ,TYPE_1__*) ;
 scalar_t__ pt_qry_will_event (struct pt_query_decoder*) ;
 int pte_eos ;
 int pte_internal ;
 int stub1 (struct pt_query_decoder*) ;

__attribute__((used)) static int pt_qry_read_ahead(struct pt_query_decoder *decoder)
{
 if (!decoder)
  return -pte_internal;

 for (;;) {
  const struct pt_decoder_function *dfun;
  int errcode;

  errcode = pt_df_fetch(&decoder->next, decoder->pos,
          &decoder->config);
  if (errcode)
   return errcode;

  dfun = decoder->next;
  if (!dfun)
   return -pte_internal;

  if (!dfun->decode)
   return -pte_internal;




  if (dfun->flags & (pdff_tip | pdff_tnt))
   return 0;


  if (pt_qry_will_event(decoder))
   return 0;


  errcode = dfun->decode(decoder);
  if (errcode) {






   if (errcode == -pte_eos) {
    decoder->pos = decoder->config.end;
    decoder->next = ((void*)0);
   }

   return errcode;
  }
 }
}
