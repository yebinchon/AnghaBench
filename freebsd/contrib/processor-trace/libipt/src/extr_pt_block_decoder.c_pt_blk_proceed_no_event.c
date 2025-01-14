
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_section {int dummy; } ;
struct pt_mapped_section {int dummy; } ;
struct pt_block_decoder {int dummy; } ;
struct pt_block_cache {int dummy; } ;
struct pt_block {int isid; } ;


 int pt_blk_block_is_empty (struct pt_block*) ;
 int pt_blk_msec_lookup (struct pt_block_decoder*,struct pt_mapped_section const**) ;
 int pt_blk_proceed_no_event_cached (struct pt_block_decoder*,struct pt_block*,struct pt_block_cache*,struct pt_mapped_section const*) ;
 int pt_blk_proceed_no_event_uncached (struct pt_block_decoder*,struct pt_block*) ;
 struct pt_section* pt_msec_section (struct pt_mapped_section const*) ;
 struct pt_block_cache* pt_section_bcache (struct pt_section*) ;
 int pte_internal ;
 int pte_nomap ;

__attribute__((used)) static int pt_blk_proceed_no_event(struct pt_block_decoder *decoder,
       struct pt_block *block)
{
 const struct pt_mapped_section *msec;
 struct pt_block_cache *bcache;
 struct pt_section *section;
 int isid;

 if (!decoder || !block)
  return -pte_internal;

 isid = pt_blk_msec_lookup(decoder, &msec);
 if (isid < 0) {
  if (isid != -pte_nomap)
   return isid;




  return pt_blk_proceed_no_event_uncached(decoder, block);
 }


 if (isid != block->isid) {
  if (!pt_blk_block_is_empty(block))
   return 0;

  block->isid = isid;
 }

 section = pt_msec_section(msec);
 if (!section)
  return -pte_internal;

 bcache = pt_section_bcache(section);
 if (!bcache)
  return pt_blk_proceed_no_event_uncached(decoder, block);

 return pt_blk_proceed_no_event_cached(decoder, block, bcache, msec);
}
