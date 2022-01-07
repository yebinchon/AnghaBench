
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* svn_revnum_t ;
struct TYPE_10__ {void* number; } ;
struct TYPE_11__ {TYPE_3__ value; void* kind; } ;
struct TYPE_8__ {void* number; } ;
struct TYPE_9__ {TYPE_1__ value; void* kind; } ;
struct TYPE_12__ {TYPE_4__ end; TYPE_2__ start; } ;
typedef TYPE_5__ svn_opt_revision_range_t ;
typedef int apr_pool_t ;


 TYPE_5__* apr_palloc (int *,int) ;
 void* svn_opt_revision_number ;

svn_opt_revision_range_t *
svn_opt__revision_range_from_revnums(svn_revnum_t start_revnum,
                                     svn_revnum_t end_revnum,
                                     apr_pool_t *result_pool)
{
  svn_opt_revision_range_t *range = apr_palloc(result_pool, sizeof(*range));

  range->start.kind = svn_opt_revision_number;
  range->start.value.number = start_revnum;
  range->end.kind = svn_opt_revision_number;
  range->end.value.number = end_revnum;
  return range;
}
