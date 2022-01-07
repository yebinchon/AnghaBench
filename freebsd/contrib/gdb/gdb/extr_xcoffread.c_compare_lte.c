
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linetable_entry {int pc; } ;



__attribute__((used)) static int
compare_lte (const void *lte1p, const void *lte2p)
{
  struct linetable_entry *lte1 = (struct linetable_entry *) lte1p;
  struct linetable_entry *lte2 = (struct linetable_entry *) lte2p;
  return lte1->pc - lte2->pc;
}
