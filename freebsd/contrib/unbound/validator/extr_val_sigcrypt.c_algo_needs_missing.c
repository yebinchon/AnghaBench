
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct algo_needs {int* needs; } ;


 int ALGO_NEEDS_MAX ;

int algo_needs_missing(struct algo_needs* n)
{
 int i;

 for(i=0; i<ALGO_NEEDS_MAX; i++)
  if(n->needs[i] == 2)
   return 0;

 for(i=0; i<ALGO_NEEDS_MAX; i++)
  if(n->needs[i] == 1)
   return i;
 return 0;
}
