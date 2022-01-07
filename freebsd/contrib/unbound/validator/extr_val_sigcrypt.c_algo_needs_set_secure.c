
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct algo_needs {scalar_t__ num; scalar_t__* needs; } ;



int algo_needs_set_secure(struct algo_needs* n, uint8_t algo)
{
 if(n->needs[algo]) {
  n->needs[algo] = 0;
  n->num --;
  if(n->num == 0)
   return 1;
 }
 return 0;
}
