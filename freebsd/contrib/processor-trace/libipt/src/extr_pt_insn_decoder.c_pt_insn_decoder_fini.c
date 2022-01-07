
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_insn_decoder {int query; int default_image; int scache; } ;


 int pt_image_fini (int *) ;
 int pt_msec_cache_fini (int *) ;
 int pt_qry_decoder_fini (int *) ;

void pt_insn_decoder_fini(struct pt_insn_decoder *decoder)
{
 if (!decoder)
  return;

 pt_msec_cache_fini(&decoder->scache);
 pt_image_fini(&decoder->default_image);
 pt_qry_decoder_fini(&decoder->query);
}
