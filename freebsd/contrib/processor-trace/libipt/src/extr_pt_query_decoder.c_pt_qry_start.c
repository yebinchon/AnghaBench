
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct pt_query_decoder {int ip; struct pt_decoder_function* next; int config; int const* pos; int const* sync; } ;
struct pt_decoder_function {int (* decode ) (struct pt_query_decoder*) ;} ;


 struct pt_decoder_function const pt_decode_psb ;
 int pt_df_fetch (struct pt_decoder_function**,int const*,int *) ;
 int pt_last_ip_query (int *,int *) ;
 int pt_qry_read_ahead (struct pt_query_decoder*) ;
 int pt_qry_reset (struct pt_query_decoder*) ;
 int pt_qry_status_flags (struct pt_query_decoder*) ;
 int pte_invalid ;
 int pte_nosync ;
 int pts_ip_suppressed ;
 int stub1 (struct pt_query_decoder*) ;

__attribute__((used)) static int pt_qry_start(struct pt_query_decoder *decoder, const uint8_t *pos,
   uint64_t *addr)
{
 const struct pt_decoder_function *dfun;
 int status, errcode;

 if (!decoder || !pos)
  return -pte_invalid;

 pt_qry_reset(decoder);

 decoder->sync = pos;
 decoder->pos = pos;

 errcode = pt_df_fetch(&decoder->next, pos, &decoder->config);
 if (errcode)
  return errcode;

 dfun = decoder->next;


 if (dfun != &pt_decode_psb)
  return -pte_nosync;


 errcode = dfun->decode(decoder);
 if (errcode < 0)
  return errcode;






 if (addr) {
  status = pt_last_ip_query(addr, &decoder->ip);


  if (!status)
   addr = ((void*)0);
 }


 errcode = pt_qry_read_ahead(decoder);
 if (errcode < 0)
  return errcode;


 status = pt_qry_status_flags(decoder);
 if (status < 0)
  return status;

 errcode = pt_last_ip_query(addr, &decoder->ip);
 if (errcode < 0) {

  if (addr)
   status |= pts_ip_suppressed;
 }

 return status;
}
