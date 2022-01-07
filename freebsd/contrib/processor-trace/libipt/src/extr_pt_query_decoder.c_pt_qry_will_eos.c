
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_query_decoder {int config; int pos; struct pt_decoder_function* next; } ;
struct pt_decoder_function {int dummy; } ;


 int pt_df_fetch (struct pt_decoder_function const**,int ,int *) ;
 int pte_eos ;
 int pte_internal ;

__attribute__((used)) static int pt_qry_will_eos(const struct pt_query_decoder *decoder)
{
 const struct pt_decoder_function *dfun;
 int errcode;

 if (!decoder)
  return -pte_internal;

 dfun = decoder->next;
 if (dfun)
  return 0;
 errcode = pt_df_fetch(&dfun, decoder->pos, &decoder->config);
 return errcode == -pte_eos;
}
