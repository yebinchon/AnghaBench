
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct algo_needs {int* needs; } ;



void algo_needs_set_bogus(struct algo_needs* n, uint8_t algo)
{
 if(n->needs[algo]) n->needs[algo] = 2;
}
