
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_image_section_cache {int lock; int name; int limit; } ;


 int UINT64_MAX ;
 int dupstr (char const*) ;
 int memset (struct pt_image_section_cache*,int ,int) ;
 int mtx_init (int *,int ) ;
 int mtx_plain ;
 int pte_bad_lock ;
 int pte_internal ;
 int pte_nomem ;
 int thrd_success ;

int pt_iscache_init(struct pt_image_section_cache *iscache, const char *name)
{
 if (!iscache)
  return -pte_internal;

 memset(iscache, 0, sizeof(*iscache));
 iscache->limit = UINT64_MAX;
 if (name) {
  iscache->name = dupstr(name);
  if (!iscache->name)
   return -pte_nomem;
 }
 return 0;
}
