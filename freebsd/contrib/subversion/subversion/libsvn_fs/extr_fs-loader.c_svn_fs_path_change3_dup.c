
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int len; int data; } ;
struct TYPE_8__ {scalar_t__ copyfrom_path; TYPE_1__ path; } ;
typedef TYPE_2__ svn_fs_path_change3_t ;
typedef int apr_pool_t ;


 TYPE_2__* apr_pmemdup (int *,TYPE_2__*,int) ;
 scalar_t__ apr_pstrdup (int *,scalar_t__) ;
 int apr_pstrmemdup (int *,int ,int ) ;

svn_fs_path_change3_t *
svn_fs_path_change3_dup(svn_fs_path_change3_t *change,
                        apr_pool_t *result_pool)
{
  svn_fs_path_change3_t *copy = apr_pmemdup(result_pool, change,
                                            sizeof(*copy));

  copy->path.data = apr_pstrmemdup(result_pool, copy->path.data,
                                   copy->path.len);
  if (copy->copyfrom_path)
    copy->copyfrom_path = apr_pstrdup(result_pool, change->copyfrom_path);

  return copy;
}
