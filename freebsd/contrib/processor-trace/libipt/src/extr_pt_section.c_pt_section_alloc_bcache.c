
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct pt_section {struct pt_image_section_cache* iscache; struct pt_block_cache* bcache; int mcount; } ;
struct pt_image_section_cache {int dummy; } ;
struct pt_block_cache {int dummy; } ;


 struct pt_block_cache* pt_bcache_alloc (scalar_t__) ;
 int pt_iscache_notify_resize (struct pt_image_section_cache*,struct pt_section*,scalar_t__) ;
 struct pt_block_cache* pt_section_bcache (struct pt_section*) ;
 int pt_section_lock (struct pt_section*) ;
 int pt_section_lock_attach (struct pt_section*) ;
 int pt_section_memsize_locked (struct pt_section*,scalar_t__*) ;
 scalar_t__ pt_section_size (struct pt_section*) ;
 int pt_section_unlock (struct pt_section*) ;
 int pt_section_unlock_attach (struct pt_section*) ;
 int pte_internal ;
 int pte_nomem ;
 int pte_not_supported ;

int pt_section_alloc_bcache(struct pt_section *section)
{
 struct pt_image_section_cache *iscache;
 struct pt_block_cache *bcache;
 uint64_t ssize, memsize;
 uint32_t csize;
 int errcode;

 if (!section)
  return -pte_internal;

 if (!section->mcount)
  return -pte_internal;

 ssize = pt_section_size(section);
 csize = (uint32_t) ssize;

 if (csize != ssize)
  return -pte_not_supported;

 memsize = 0ull;
 errcode = pt_section_lock_attach(section);
 if (errcode < 0)
  return errcode;

 errcode = pt_section_lock(section);
 if (errcode < 0)
  goto out_alock;

 bcache = pt_section_bcache(section);
 if (bcache) {
  errcode = 0;
  goto out_lock;
 }

 bcache = pt_bcache_alloc(csize);
 if (!bcache) {
  errcode = -pte_nomem;
  goto out_lock;
 }







 section->bcache = bcache;

 errcode = pt_section_memsize_locked(section, &memsize);
 if (errcode < 0)
  goto out_lock;

 errcode = pt_section_unlock(section);
 if (errcode < 0)
  goto out_alock;

 if (memsize) {
  iscache = section->iscache;
  if (iscache) {
   errcode = pt_iscache_notify_resize(iscache, section,
         memsize);
   if (errcode < 0)
    goto out_alock;
  }
 }

 return pt_section_unlock_attach(section);


out_lock:
 (void) pt_section_unlock(section);

out_alock:
 (void) pt_section_unlock_attach(section);
 return errcode;
}
