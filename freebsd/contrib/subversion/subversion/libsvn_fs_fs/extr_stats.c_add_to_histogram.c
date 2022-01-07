
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sum; int count; } ;
struct TYPE_7__ {TYPE_2__* lines; TYPE_1__ total; } ;
typedef TYPE_3__ svn_fs_fs__histogram_t ;
typedef size_t apr_size_t ;
typedef int apr_int64_t ;
struct TYPE_6__ {int sum; int count; } ;



__attribute__((used)) static void
add_to_histogram(svn_fs_fs__histogram_t *histogram,
                 apr_int64_t size)
{
  apr_int64_t shift = 0;

  while (((apr_int64_t)(1) << shift) <= size)
    shift++;

  histogram->total.count++;
  histogram->total.sum += size;
  histogram->lines[(apr_size_t)shift].count++;
  histogram->lines[(apr_size_t)shift].sum += size;
}
