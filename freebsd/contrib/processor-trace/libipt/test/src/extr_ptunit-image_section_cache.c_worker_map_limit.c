
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct iscache_fixture {int iscache; int * section; } ;
typedef int limits ;


 int num_iterations ;
 int num_sections ;
 int pt_iscache_set_limit (int *,int) ;
 int pt_section_map (int ) ;
 int pt_section_unmap (int ) ;
 int pte_internal ;

__attribute__((used)) static int worker_map_limit(void *arg)
{
 struct iscache_fixture *cfix;
 uint64_t limits[] = { 0x8000, 0x3000, 0x12000, 0x0 }, limit;
 int it, sec, errcode, lim;

 cfix = arg;
 if (!cfix)
  return -pte_internal;

 lim = 0;
 for (it = 0; it < num_iterations; ++it) {
  for (sec = 0; sec < num_sections; ++sec) {

   errcode = pt_section_map(cfix->section[sec]);
   if (errcode < 0)
    return errcode;

   errcode = pt_section_unmap(cfix->section[sec]);
   if (errcode < 0)
    return errcode;
  }

  if (it % 23 != 0)
   continue;

  limit = limits[lim++];
  lim %= sizeof(limits) / sizeof(*limits);

  errcode = pt_iscache_set_limit(&cfix->iscache, limit);
  if (errcode < 0)
   return errcode;
 }

 return 0;
}
