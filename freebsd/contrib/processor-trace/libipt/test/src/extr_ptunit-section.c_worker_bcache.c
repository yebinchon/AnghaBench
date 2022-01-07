
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section_fixture {int section; } ;
struct pt_block_cache {int dummy; } ;


 int num_work ;
 struct pt_block_cache* pt_section_bcache (int ) ;
 int pt_section_get (int ) ;
 int pt_section_map (int ) ;
 int pt_section_put (int ) ;
 int pt_section_request_bcache (int ) ;
 int pt_section_unmap (int ) ;
 int pte_internal ;
 int pte_nomem ;

__attribute__((used)) static int worker_bcache(void *arg)
{
 struct section_fixture *sfix;
 int it, errcode;

 sfix = arg;
 if (!sfix)
  return -pte_internal;

 errcode = pt_section_get(sfix->section);
 if (errcode < 0)
  return errcode;

 for (it = 0; it < num_work; ++it) {
  struct pt_block_cache *bcache;

  errcode = pt_section_map(sfix->section);
  if (errcode < 0)
   goto out_put;

  errcode = pt_section_request_bcache(sfix->section);
  if (errcode < 0)
   goto out_unmap;

  bcache = pt_section_bcache(sfix->section);
  if (!bcache) {
   errcode = -pte_nomem;
   goto out_unmap;
  }

  errcode = pt_section_unmap(sfix->section);
  if (errcode < 0)
   goto out_put;
 }

 return pt_section_put(sfix->section);

out_unmap:
 (void) pt_section_unmap(sfix->section);

out_put:
 (void) pt_section_put(sfix->section);
 return errcode;
}
