
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int const lzma_ret ;
struct TYPE_3__ {int coder; int const (* code ) (int ,int *,int const*,size_t*,size_t) ;int (* reset ) (int ,int *) ;int (* set_uncompressed ) (int ,int) ;} ;
struct TYPE_4__ {int sequence; int need_properties; int need_dictionary_reset; int uncompressed_size; int next_sequence; int compressed_size; TYPE_1__ lzma; int options; } ;
typedef TYPE_2__ lzma_lzma2_coder ;
typedef int lzma_dict ;


 int const LZMA_DATA_ERROR ;
 int const LZMA_OK ;
 int const LZMA_PROG_ERROR ;
 int const LZMA_STREAM_END ;
 int assert (int ) ;
 int dict_reset (int *) ;
 int dict_write (int *,int const*,size_t*,size_t,size_t const*) ;
 int lzma_lzma_lclppb_decode (int *,int const) ;
 int stub1 (int ,int *) ;
 int stub2 (int ,int) ;
 int stub3 (int ,int *) ;
 int const stub4 (int ,int *,int const*,size_t*,size_t) ;

__attribute__((used)) static lzma_ret
lzma2_decode(void *coder_ptr, lzma_dict *restrict dict,
  const uint8_t *restrict in, size_t *restrict in_pos,
  size_t in_size)
{
 lzma_lzma2_coder *restrict coder = coder_ptr;




 while (*in_pos < in_size || coder->sequence == 131)
 switch (coder->sequence) {
 case 133: {
  const uint32_t control = in[*in_pos];
  ++*in_pos;


  if (control == 0x00)
   return LZMA_STREAM_END;

  if (control >= 0xE0 || control == 1) {


   coder->need_properties = 1;
   coder->need_dictionary_reset = 1;
  } else if (coder->need_dictionary_reset) {
   return LZMA_DATA_ERROR;
  }

  if (control >= 0x80) {


   coder->uncompressed_size = (control & 0x1F) << 16;
   coder->sequence = 129;



   if (control >= 0xC0) {


    coder->need_properties = 0;
    coder->next_sequence = 130;

   } else if (coder->need_properties) {
    return LZMA_DATA_ERROR;

   } else {
    coder->next_sequence = 131;




    if (control >= 0xA0)
     coder->lzma.reset(coder->lzma.coder,
       &coder->options);
   }
  } else {

   if (control > 2)
    return LZMA_DATA_ERROR;


   coder->sequence = 135;
   coder->next_sequence = 132;
  }

  if (coder->need_dictionary_reset) {


   coder->need_dictionary_reset = 0;
   dict_reset(dict);
   return LZMA_OK;
  }

  break;
 }

 case 129:
  coder->uncompressed_size += (uint32_t)(in[(*in_pos)++]) << 8;
  coder->sequence = 128;
  break;

 case 128:
  coder->uncompressed_size += in[(*in_pos)++] + 1;
  coder->sequence = 135;
  coder->lzma.set_uncompressed(coder->lzma.coder,
    coder->uncompressed_size);
  break;

 case 135:
  coder->compressed_size = (uint32_t)(in[(*in_pos)++]) << 8;
  coder->sequence = 134;
  break;

 case 134:
  coder->compressed_size += in[(*in_pos)++] + 1;
  coder->sequence = coder->next_sequence;
  break;

 case 130:
  if (lzma_lzma_lclppb_decode(&coder->options, in[(*in_pos)++]))
   return LZMA_DATA_ERROR;

  coder->lzma.reset(coder->lzma.coder, &coder->options);

  coder->sequence = 131;
  break;

 case 131: {


  const size_t in_start = *in_pos;


  const lzma_ret ret = coder->lzma.code(coder->lzma.coder,
    dict, in, in_pos, in_size);


  const size_t in_used = *in_pos - in_start;
  if (in_used > coder->compressed_size)
   return LZMA_DATA_ERROR;

  coder->compressed_size -= in_used;


  if (ret != LZMA_STREAM_END)
   return ret;




  if (coder->compressed_size != 0)
   return LZMA_DATA_ERROR;

  coder->sequence = 133;
  break;
 }

 case 132: {

  dict_write(dict, in, in_pos, in_size, &coder->compressed_size);
  if (coder->compressed_size != 0)
   return LZMA_OK;

  coder->sequence = 133;
  break;
 }

 default:
  assert(0);
  return LZMA_PROG_ERROR;
 }

 return LZMA_OK;
}
