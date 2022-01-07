
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int data; int len; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_fs_x__batch_fsync_t ;
struct TYPE_8__ {int fs; } ;
typedef TYPE_2__ svn_fs_txn_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_file_t ;


 int SVN_ERR (int ) ;
 int SVN_FS__PROP_TXN_CHECK_LOCKS ;
 int SVN_FS__PROP_TXN_CHECK_OOD ;
 int SVN_FS__PROP_TXN_CLIENT_DATE ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_DATE ;
 int apr_time_now () ;
 scalar_t__ strcmp (int ,char*) ;
 int strlen (int ) ;
 int svn_fs_x__batch_fsync_open_file (int **,int *,char const*,int *) ;
 char* svn_fs_x__path_revprops (int ,int ,int *) ;
 int svn_fs_x__txn_proplist (int **,TYPE_2__*,int *) ;
 int svn_fs_x__write_non_packed_revprops (int *,int *,int *) ;
 TYPE_1__* svn_hash_gets (int *,int ) ;
 int svn_hash_sets (int *,int ,TYPE_1__*) ;
 int svn_time_to_cstring (int ,int *) ;

__attribute__((used)) static svn_error_t *
write_final_revprop(const char **path,
                    svn_fs_txn_t *txn,
                    svn_revnum_t revision,
                    svn_fs_x__batch_fsync_t *batch,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  apr_hash_t *props;
  svn_string_t date;
  svn_string_t *client_date;
  apr_file_t *file;

  SVN_ERR(svn_fs_x__txn_proplist(&props, txn, scratch_pool));


  if (svn_hash_gets(props, SVN_FS__PROP_TXN_CHECK_OOD))
    svn_hash_sets(props, SVN_FS__PROP_TXN_CHECK_OOD, ((void*)0));

  if (svn_hash_gets(props, SVN_FS__PROP_TXN_CHECK_LOCKS))
    svn_hash_sets(props, SVN_FS__PROP_TXN_CHECK_LOCKS, ((void*)0));

  client_date = svn_hash_gets(props, SVN_FS__PROP_TXN_CLIENT_DATE);
  if (client_date)
    svn_hash_sets(props, SVN_FS__PROP_TXN_CLIENT_DATE, ((void*)0));



  if (!client_date || strcmp(client_date->data, "1"))
    {
      date.data = svn_time_to_cstring(apr_time_now(), scratch_pool);
      date.len = strlen(date.data);
      svn_hash_sets(props, SVN_PROP_REVISION_DATE, &date);
    }


  *path = svn_fs_x__path_revprops(txn->fs, revision, result_pool);
  SVN_ERR(svn_fs_x__batch_fsync_open_file(&file, batch, *path, scratch_pool));


  SVN_ERR(svn_fs_x__write_non_packed_revprops(file, props, scratch_pool));

  return SVN_NO_ERROR;
}
