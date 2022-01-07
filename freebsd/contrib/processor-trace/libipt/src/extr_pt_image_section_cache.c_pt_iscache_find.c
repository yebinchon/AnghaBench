
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pt_image_section_cache {int dummy; } ;


 int pt_iscache_find_locked (struct pt_image_section_cache*,char const*,int ,int ,int ) ;
 int pt_iscache_lock (struct pt_image_section_cache*) ;
 int pt_iscache_unlock (struct pt_image_section_cache*) ;

int pt_iscache_find(struct pt_image_section_cache *iscache,
      const char *filename, uint64_t offset, uint64_t size,
      uint64_t laddr)
{
 int errcode, isid;

 errcode = pt_iscache_lock(iscache);
 if (errcode < 0)
  return errcode;

 isid = pt_iscache_find_locked(iscache, filename, offset, size, laddr);

 errcode = pt_iscache_unlock(iscache);
 if (errcode < 0)
  return errcode;

 return isid;
}
