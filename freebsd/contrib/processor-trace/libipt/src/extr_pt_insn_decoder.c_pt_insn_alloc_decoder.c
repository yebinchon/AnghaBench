
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_insn_decoder {int dummy; } ;
struct pt_config {int dummy; } ;


 int free (struct pt_insn_decoder*) ;
 struct pt_insn_decoder* malloc (int) ;
 int pt_insn_decoder_init (struct pt_insn_decoder*,struct pt_config const*) ;

struct pt_insn_decoder *pt_insn_alloc_decoder(const struct pt_config *config)
{
 struct pt_insn_decoder *decoder;
 int errcode;

 decoder = malloc(sizeof(*decoder));
 if (!decoder)
  return ((void*)0);

 errcode = pt_insn_decoder_init(decoder, config);
 if (errcode < 0) {
  free(decoder);
  return ((void*)0);
 }

 return decoder;
}
