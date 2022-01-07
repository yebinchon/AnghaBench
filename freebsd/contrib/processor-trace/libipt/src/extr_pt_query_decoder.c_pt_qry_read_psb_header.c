
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_query_decoder {struct pt_decoder_function* next; int config; int pos; int ip; } ;
struct pt_decoder_function {int flags; int (* header ) (struct pt_query_decoder*) ;} ;


 int pdff_psbend ;
 int pt_df_fetch (struct pt_decoder_function**,int ,int *) ;
 int pt_last_ip_init (int *) ;
 int pte_bad_context ;
 int pte_internal ;
 int stub1 (struct pt_query_decoder*) ;

__attribute__((used)) static int pt_qry_read_psb_header(struct pt_query_decoder *decoder)
{
 if (!decoder)
  return -pte_internal;

 pt_last_ip_init(&decoder->ip);

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


  if (dfun->flags & pdff_psbend)
   return 0;

  if (!dfun->header)
   return -pte_bad_context;

  errcode = dfun->header(decoder);
  if (errcode)
   return errcode;
 }
}
