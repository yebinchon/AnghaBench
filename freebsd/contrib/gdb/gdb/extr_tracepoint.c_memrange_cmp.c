
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memrange {scalar_t__ type; scalar_t__ start; } ;
typedef scalar_t__ bfd_vma ;



__attribute__((used)) static int
memrange_cmp (const void *va, const void *vb)
{
  const struct memrange *a = va, *b = vb;

  if (a->type < b->type)
    return -1;
  if (a->type > b->type)
    return 1;
  if (a->type == 0)
    {
      if ((bfd_vma) a->start < (bfd_vma) b->start)
 return -1;
      if ((bfd_vma) a->start > (bfd_vma) b->start)
 return 1;
    }
  else
    {
      if (a->start < b->start)
 return -1;
      if (a->start > b->start)
 return 1;
    }
  return 0;
}
