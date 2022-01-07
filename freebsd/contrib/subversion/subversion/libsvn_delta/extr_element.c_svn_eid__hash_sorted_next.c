
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ i; int eid; TYPE_5__* array; int val; } ;
typedef TYPE_1__ svn_eid__hash_iter_t ;
struct TYPE_8__ {scalar_t__ nelts; } ;
struct TYPE_7__ {int value; scalar_t__ key; } ;


 TYPE_4__ APR_ARRAY_IDX (TYPE_5__*,scalar_t__,int ) ;
 int svn_sort__item_t ;

svn_eid__hash_iter_t *
svn_eid__hash_sorted_next(svn_eid__hash_iter_t *hi)
{
  hi->i++;
  if (hi->i >= hi->array->nelts)
    {
      return ((void*)0);
    }
  hi->eid = *(const int *)(APR_ARRAY_IDX(hi->array, hi->i,
                                         svn_sort__item_t).key);
  hi->val = APR_ARRAY_IDX(hi->array, hi->i, svn_sort__item_t).value;
  return hi;
}
