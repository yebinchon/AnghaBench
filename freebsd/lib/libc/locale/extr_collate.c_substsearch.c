
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct xlocale_collate {TYPE_2__** subst_table; TYPE_1__* info; } ;
typedef int int32_t ;
struct TYPE_4__ {int const key; int const* pri; } ;
typedef TYPE_2__ collate_subst_t ;
struct TYPE_3__ {int* subst_count; int directive_count; } ;


 int const COLLATE_SUBST_PRIORITY ;
 int assert (int) ;

__attribute__((used)) static const int32_t *
substsearch(struct xlocale_collate *table, const wchar_t key, int pass)
{
 const collate_subst_t *p;
 int n = table->info->subst_count[pass];

 if (n == 0)
  return (((void*)0));

 if (pass >= table->info->directive_count)
  return (((void*)0));

 if (!(key & COLLATE_SUBST_PRIORITY))
  return (((void*)0));

 p = table->subst_table[pass] + (key & ~COLLATE_SUBST_PRIORITY);
 assert(p->key == key);

 return (p->pri);
}
