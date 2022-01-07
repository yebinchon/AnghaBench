
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int database; int name; } ;
typedef TYPE_1__ ns_mtab ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
mtab_compare(const void *a, const void *b)
{
      int cmp;

      cmp = strcmp(((const ns_mtab *)a)->name, ((const ns_mtab *)b)->name);
      if (cmp != 0)
       return (cmp);
      else
       return (strcmp(((const ns_mtab *)a)->database,
    ((const ns_mtab *)b)->database));
}
