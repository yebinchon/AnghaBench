
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct pt_section {int dummy; } ;
struct TYPE_2__ {int nsecs; int * laddr; struct pt_section** section; } ;
struct image_fixture {TYPE_1__ iscache; } ;


 int ifix_nsecs ;
 int pte_internal ;

__attribute__((used)) static int ifix_cache_section(struct image_fixture *ifix,
         struct pt_section *section, uint64_t laddr)
{
 int index;

 if (!ifix)
  return -pte_internal;

 index = ifix->iscache.nsecs;
 if (ifix_nsecs <= index)
  return -pte_internal;

 ifix->iscache.section[index] = section;
 ifix->iscache.laddr[index] = laddr;

 index += 1;
 ifix->iscache.nsecs = index;

 return index;
}
