
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



int taglist_intersect(uint8_t* list1, size_t list1len, uint8_t* list2,
 size_t list2len)
{
 size_t i;
 if(!list1 || !list2)
  return 0;
 for(i=0; i<list1len && i<list2len; i++) {
  if((list1[i] & list2[i]) != 0)
   return 1;
 }
 return 0;
}
