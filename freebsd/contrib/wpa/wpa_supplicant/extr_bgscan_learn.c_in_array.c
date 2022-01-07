
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int in_array(int *array, int val)
{
 int i;

 if (array == ((void*)0))
  return 0;

 for (i = 0; array[i]; i++) {
  if (array[i] == val)
   return 1;
 }

 return 0;
}
