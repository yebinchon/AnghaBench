
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohash {int dummy; } ;


 void* ohash_next (struct ohash*,unsigned int*) ;

void *
ohash_first(struct ohash *h, unsigned int *pos)
{
 *pos = 0;
 return ohash_next(h, pos);
}
