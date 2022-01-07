
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_config {int flags; } ;
struct pt_block_decoder {int scache; int default_image; int * image; int query; int flags; } ;


 int pt_blk_init_qry_flags (int *,int *) ;
 int pt_blk_reset (struct pt_block_decoder*) ;
 int pt_config_from_user (struct pt_config*,struct pt_config const*) ;
 int pt_image_init (int *,int *) ;
 int pt_msec_cache_init (int *) ;
 int pt_qry_decoder_init (int *,struct pt_config*) ;
 int pte_internal ;

int pt_blk_decoder_init(struct pt_block_decoder *decoder,
   const struct pt_config *uconfig)
{
 struct pt_config config;
 int errcode;

 if (!decoder)
  return -pte_internal;

 errcode = pt_config_from_user(&config, uconfig);
 if (errcode < 0)
  return errcode;


 decoder->flags = config.flags;


 errcode = pt_blk_init_qry_flags(&config.flags, &decoder->flags);
 if (errcode < 0)
  return errcode;

 errcode = pt_qry_decoder_init(&decoder->query, &config);
 if (errcode < 0)
  return errcode;

 pt_image_init(&decoder->default_image, ((void*)0));
 decoder->image = &decoder->default_image;

 errcode = pt_msec_cache_init(&decoder->scache);
 if (errcode < 0)
  return errcode;

 pt_blk_reset(decoder);

 return 0;
}
