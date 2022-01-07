
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ib_net16_t ;



__attribute__((used)) static int cmp_lids(const void *l1, const void *l2)
{
 ib_net16_t lid1 = *((ib_net16_t *) l1), lid2 = *((ib_net16_t *) l2);

 if (lid1 < lid2)
  return -1;
 else if (lid1 > lid2)
  return 1;
 else
  return 0;
}
