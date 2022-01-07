
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_mapped_section {int dummy; } ;
struct pt_block_decoder {int ip; int image; int scache; } ;


 int pt_blk_msec_fill (struct pt_block_decoder*,struct pt_mapped_section const**) ;
 int pt_msec_cache_read (int *,struct pt_mapped_section const**,int ,int ) ;
 int pte_internal ;
 int pte_nomap ;

__attribute__((used)) static inline int pt_blk_msec_lookup(struct pt_block_decoder *decoder,
         const struct pt_mapped_section **pmsec)
{
 int isid;

 if (!decoder)
  return -pte_internal;

 isid = pt_msec_cache_read(&decoder->scache, pmsec, decoder->image,
      decoder->ip);
 if (isid < 0) {
  if (isid != -pte_nomap)
   return isid;

  return pt_blk_msec_fill(decoder, pmsec);
 }

 return isid;
}
