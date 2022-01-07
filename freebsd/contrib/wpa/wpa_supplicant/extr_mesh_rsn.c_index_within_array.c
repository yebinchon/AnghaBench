
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int index_within_array(const int *array, int idx)
{
 int i;

 for (i = 0; i < idx; i++) {
  if (array[i] == -1)
   return 0;
 }

 return 1;
}
