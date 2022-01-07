
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int rev; int fs; scalar_t__ is_txn_root; } ;
typedef TYPE_1__ svn_fs_root_t ;
struct TYPE_9__ {int * vtable; TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_path_change_iterator_t ;
typedef int svn_error_t ;
struct TYPE_10__ {int context; int changes; void* scratch_pool; int hi; } ;
typedef TYPE_3__ fs_txn_changes_iterator_data_t ;
typedef TYPE_3__ fs_revision_changes_iterator_data_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apr_hash_first (int *,int *) ;
 void* apr_pcalloc (int *,int) ;
 int rev_changes_iterator_vtable ;
 int root_txn_id (TYPE_1__*) ;
 int svn_fs_fs__create_changes_context (int *,int ,int ,int *) ;
 int svn_fs_fs__get_changes (int *,int ,int *,int *) ;
 int svn_fs_fs__txn_changes_fetch (int **,int ,int ,int *) ;
 void* svn_pool_create (int *) ;
 int txn_changes_iterator_vtable ;

__attribute__((used)) static svn_error_t *
fs_report_changes(svn_fs_path_change_iterator_t **iterator,
                  svn_fs_root_t *root,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  svn_fs_path_change_iterator_t *result = apr_pcalloc(result_pool,
                                                      sizeof(*result));
  if (root->is_txn_root)
    {
      fs_txn_changes_iterator_data_t *data = apr_pcalloc(result_pool,
                                                         sizeof(*data));
      apr_hash_t *changed_paths;
      SVN_ERR(svn_fs_fs__txn_changes_fetch(&changed_paths, root->fs,
                                           root_txn_id(root), result_pool));

      data->hi = apr_hash_first(result_pool, changed_paths);
      result->fsap_data = data;
      result->vtable = &txn_changes_iterator_vtable;
    }
  else
    {


      apr_pool_t *changes_pool = svn_pool_create(result_pool);


      fs_revision_changes_iterator_data_t *data = apr_pcalloc(result_pool,
                                                              sizeof(*data));




      data->scratch_pool = svn_pool_create(result_pool);


      SVN_ERR(svn_fs_fs__create_changes_context(&data->context,
                                                root->fs, root->rev,
                                                result_pool));
      SVN_ERR(svn_fs_fs__get_changes(&data->changes, data->context,
                                     changes_pool, scratch_pool));


      result->fsap_data = data;
      result->vtable = &rev_changes_iterator_vtable;
    }

  *iterator = result;

  return SVN_NO_ERROR;
}
