
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscache_fixture {int * section; } ;


 int num_iterations ;
 int num_sections ;
 int pt_section_map (int ) ;
 int pt_section_unmap (int ) ;
 int pte_internal ;

__attribute__((used)) static int worker_map(void *arg)
{
 struct iscache_fixture *cfix;
 int it, sec, status;

 cfix = arg;
 if (!cfix)
  return -pte_internal;

 for (it = 0; it < num_iterations; ++it) {
  for (sec = 0; sec < num_sections; ++sec) {

   status = pt_section_map(cfix->section[sec]);
   if (status < 0)
    return status;

   status = pt_section_unmap(cfix->section[sec]);
   if (status < 0)
    return status;
  }
 }

 return 0;
}
