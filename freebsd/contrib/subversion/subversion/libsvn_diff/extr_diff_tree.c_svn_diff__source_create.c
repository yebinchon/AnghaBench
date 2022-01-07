
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_4__ {int revision; } ;
typedef TYPE_1__ svn_diff_source_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pcalloc (int *,int) ;

svn_diff_source_t *
svn_diff__source_create(svn_revnum_t revision,
                        apr_pool_t *result_pool)
{
  svn_diff_source_t *src = apr_pcalloc(result_pool, sizeof(*src));

  src->revision = revision;
  return src;
}
