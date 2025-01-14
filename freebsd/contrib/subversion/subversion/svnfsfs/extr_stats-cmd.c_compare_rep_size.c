
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__* value; } ;
typedef TYPE_3__ svn_sort__item_t ;
struct TYPE_7__ {scalar_t__ sum; } ;
struct TYPE_8__ {TYPE_1__ total; } ;
struct TYPE_10__ {TYPE_2__ rep_histogram; } ;
typedef TYPE_4__ svn_fs_fs__extension_info_t ;
typedef scalar_t__ apr_int64_t ;



__attribute__((used)) static int
compare_rep_size(const svn_sort__item_t *a,
                 const svn_sort__item_t *b)
{
  const svn_fs_fs__extension_info_t *lhs = a->value;
  const svn_fs_fs__extension_info_t *rhs = b->value;
  apr_int64_t diff = lhs->rep_histogram.total.sum
                   - rhs->rep_histogram.total.sum;

  return diff > 0 ? -1 : (diff < 0 ? 1 : 0);
}
