
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ptable {int sectors; int sectorsize; } ;


 int EOVERFLOW ;

int
ptable_getsize(const struct ptable *table, uint64_t *sizep)
{
 uint64_t tmp = table->sectors * table->sectorsize;

 if (tmp < table->sectors)
  return (EOVERFLOW);

 if (sizep != ((void*)0))
  *sizep = tmp;
 return (0);
}
