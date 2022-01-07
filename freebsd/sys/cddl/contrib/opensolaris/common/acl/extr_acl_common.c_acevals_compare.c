
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ key; } ;
typedef TYPE_1__ acevals_t ;



__attribute__((used)) static int
acevals_compare(const void *va, const void *vb)
{
 const acevals_t *a = va, *b = vb;

 if (a->key == b->key)
  return (0);

 if (a->key > b->key)
  return (1);

 else
  return (-1);
}
