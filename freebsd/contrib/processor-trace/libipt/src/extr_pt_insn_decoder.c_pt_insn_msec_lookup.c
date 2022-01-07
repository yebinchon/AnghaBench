
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pt_msec_cache {int dummy; } ;
struct pt_mapped_section {int dummy; } ;
struct pt_insn_decoder {int asid; int ip; struct pt_image* image; struct pt_msec_cache scache; } ;
struct pt_image {int dummy; } ;


 int pt_msec_cache_fill (struct pt_msec_cache*,struct pt_mapped_section const**,struct pt_image*,int *,int ) ;
 int pt_msec_cache_read (struct pt_msec_cache*,struct pt_mapped_section const**,struct pt_image*,int ) ;
 int pte_internal ;
 int pte_nomap ;

__attribute__((used)) static int pt_insn_msec_lookup(struct pt_insn_decoder *decoder,
          const struct pt_mapped_section **pmsec)
{
 struct pt_msec_cache *scache;
 struct pt_image *image;
 uint64_t ip;
 int isid;

 if (!decoder || !pmsec)
  return -pte_internal;

 scache = &decoder->scache;
 image = decoder->image;
 ip = decoder->ip;

 isid = pt_msec_cache_read(scache, pmsec, image, ip);
 if (isid < 0) {
  if (isid != -pte_nomap)
   return isid;

  return pt_msec_cache_fill(scache, pmsec, image,
       &decoder->asid, ip);
 }

 return isid;
}
