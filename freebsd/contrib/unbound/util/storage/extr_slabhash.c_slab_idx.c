
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slabhash {unsigned int mask; unsigned int shift; } ;
typedef unsigned int hashvalue_type ;



__attribute__((used)) static unsigned int
slab_idx(struct slabhash* sl, hashvalue_type hash)
{
 return ((hash & sl->mask) >> sl->shift);
}
