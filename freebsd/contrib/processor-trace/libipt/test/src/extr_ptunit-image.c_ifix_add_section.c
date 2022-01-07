
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image_fixture {int nsecs; int * mapping; int * status; int * section; } ;


 int ifix_init_section (int *,char*,int *,int *,struct image_fixture*) ;
 int ifix_nsecs ;
 int pte_internal ;

__attribute__((used)) static int ifix_add_section(struct image_fixture *ifix, char *filename)
{
 int index;

 if (!ifix)
  return -pte_internal;

 index = ifix->nsecs;
 if (ifix_nsecs <= index)
  return -pte_internal;

 ifix_init_section(&ifix->section[index], filename, &ifix->status[index],
     &ifix->mapping[index], ifix);

 ifix->nsecs += 1;
 return index;
}
