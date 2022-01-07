
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_x__txn_id_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_3__ {void* deletions; int * changed_paths; } ;
typedef TYPE_1__ process_changes_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_file_t ;


 int APR_BUFFERED ;
 int APR_OS_DEFAULT ;
 int APR_READ ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 void* apr_hash_make (int *) ;
 int process_changes ;
 int svn_fs_x__path_txn_changes (int *,int ,int *) ;
 int svn_fs_x__read_changes_incrementally (int ,int ,TYPE_1__*,int *) ;
 int svn_io_file_open (int **,int ,int,int ,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_stream_from_aprfile2 (int *,int ,int *) ;

svn_error_t *
svn_fs_x__txn_changes_fetch(apr_hash_t **changed_paths_p,
                            svn_fs_t *fs,
                            svn_fs_x__txn_id_t txn_id,
                            apr_pool_t *pool)
{
  apr_file_t *file;
  apr_hash_t *changed_paths = apr_hash_make(pool);
  apr_pool_t *scratch_pool = svn_pool_create(pool);
  process_changes_baton_t baton;

  baton.changed_paths = changed_paths;
  baton.deletions = apr_hash_make(scratch_pool);

  SVN_ERR(svn_io_file_open(&file,
                           svn_fs_x__path_txn_changes(fs, txn_id, scratch_pool),
                           APR_READ | APR_BUFFERED, APR_OS_DEFAULT,
                           scratch_pool));

  SVN_ERR(svn_fs_x__read_changes_incrementally(
                                  svn_stream_from_aprfile2(file, TRUE,
                                                           scratch_pool),
                                  process_changes, &baton,
                                  scratch_pool));
  svn_pool_destroy(scratch_pool);

  *changed_paths_p = changed_paths;

  return SVN_NO_ERROR;
}
