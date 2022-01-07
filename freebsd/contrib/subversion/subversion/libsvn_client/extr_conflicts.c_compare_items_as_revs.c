
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int key; } ;
typedef TYPE_1__ svn_sort__item_t ;


 int svn_sort_compare_revisions (int ,int ) ;

__attribute__((used)) static int
compare_items_as_revs(const svn_sort__item_t *a, const svn_sort__item_t *b)
{
  return svn_sort_compare_revisions(a->key, b->key);
}
