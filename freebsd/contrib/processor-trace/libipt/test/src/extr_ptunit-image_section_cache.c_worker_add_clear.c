
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pt_section {int dummy; } ;
struct iscache_fixture {int iscache; struct pt_section** section; } ;


 int num_iterations ;
 int pt_iscache_add (int *,struct pt_section*,int) ;
 int pt_iscache_clear (int *) ;
 int pte_internal ;

__attribute__((used)) static int worker_add_clear(void *arg)
{
 struct iscache_fixture *cfix;
 struct pt_section *section;
 int it;

 cfix = arg;
 if (!cfix)
  return -pte_internal;

 section = cfix->section[0];
 for (it = 0; it < num_iterations; ++it) {
  uint64_t laddr;
  int isid, errcode;

  laddr = (uint64_t) it << 3;

  isid = pt_iscache_add(&cfix->iscache, section, laddr);
  if (isid < 0)
   return isid;

  errcode = pt_iscache_clear(&cfix->iscache);
  if (errcode < 0)
   return errcode;
 }

 return 0;
}
