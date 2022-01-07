
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_root_t ;
struct TYPE_12__ {int * vtable; TYPE_4__* fsap_data; } ;
typedef TYPE_3__ svn_fs_path_change_iterator_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_13__ {int hi; } ;
typedef TYPE_4__ fsap_iterator_data_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_10__ {int (* report_changes ) (TYPE_3__**,TYPE_2__*,int *,int *) ;int (* paths_changed ) (int **,TYPE_2__*,int *) ;} ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_FS_EMULATE_REPORT_CHANGES ;
 int * SVN_NO_ERROR ;
 int apr_hash_first (int *,int *) ;
 void* apr_pcalloc (int *,int) ;
 int iterator_vtable ;
 int stub1 (int **,TYPE_2__*,int *) ;
 int stub2 (TYPE_3__**,TYPE_2__*,int *,int *) ;

svn_error_t *
svn_fs_paths_changed3(svn_fs_path_change_iterator_t **iterator,
                      svn_fs_root_t *root,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  svn_boolean_t emulate = !root->vtable->report_changes
                          || ( SVN_FS_EMULATE_REPORT_CHANGES
                              && root->vtable->paths_changed);

  if (emulate)
    {
      svn_fs_path_change_iterator_t *result;
      fsap_iterator_data_t *data;

      apr_hash_t *changes;
      SVN_ERR(root->vtable->paths_changed(&changes, root, result_pool));

      data = apr_pcalloc(result_pool, sizeof(*data));
      data->hi = apr_hash_first(result_pool, changes);

      result = apr_pcalloc(result_pool, sizeof(*result));
      result->fsap_data = data;
      result->vtable = &iterator_vtable;

      *iterator = result;
    }
  else
    {
      SVN_ERR(root->vtable->report_changes(iterator, root, result_pool,
                                           scratch_pool));
    }

  return SVN_NO_ERROR;
}
