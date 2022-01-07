
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_config {int dummy; } ;
struct pt_block_decoder {int dummy; } ;


 int free (struct pt_block_decoder*) ;
 struct pt_block_decoder* malloc (int) ;
 int pt_blk_decoder_init (struct pt_block_decoder*,struct pt_config const*) ;

struct pt_block_decoder *
pt_blk_alloc_decoder(const struct pt_config *config)
{
 struct pt_block_decoder *decoder;
 int errcode;

 decoder = malloc(sizeof(*decoder));
 if (!decoder)
  return ((void*)0);

 errcode = pt_blk_decoder_init(decoder, config);
 if (errcode < 0) {
  free(decoder);
  return ((void*)0);
 }

 return decoder;
}
