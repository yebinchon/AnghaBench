
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_5__ {scalar_t__ txn_number; int * fs; } ;
typedef TYPE_2__ get_and_increment_txn_key_baton_t ;
typedef int apr_pool_t ;


 int APR_OS_DEFAULT ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_INT64_BUFFER_SIZE ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 scalar_t__ svn__base36toui64 (int *,int ) ;
 int svn__ui64tobase36 (char*,scalar_t__) ;
 char* svn_fs_x__path_txn_current (int *,int *) ;
 char* svn_fs_x__path_txn_dir (int *,scalar_t__,int *) ;
 int svn_fs_x__read_content (TYPE_1__**,char const*,int *) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 int svn_io_dir_make (char const*,int ,int *) ;
 int svn_io_write_atomic2 (char const*,char*,int ,char const*,int ,int *) ;
 scalar_t__ svn_node_none ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
get_and_increment_txn_key_body(void *baton,
                               apr_pool_t *scratch_pool)
{
  get_and_increment_txn_key_baton_t *cb = baton;
  svn_fs_t *fs = cb->fs;
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  const char *txn_current_path = svn_fs_x__path_txn_current(fs, scratch_pool);
  char new_id_str[SVN_INT64_BUFFER_SIZE];

  svn_stringbuf_t *buf;
  SVN_ERR(svn_fs_x__read_content(&buf, txn_current_path, scratch_pool));







  cb->txn_number = svn__base36toui64(((void*)0), buf->data);
  if (cb->txn_number == 0)
    ++cb->txn_number;
  while (TRUE)
    {
      const char *txn_dir;
      svn_node_kind_t kind;
      svn_pool_clear(iterpool);

      txn_dir = svn_fs_x__path_txn_dir(fs, cb->txn_number, iterpool);
      SVN_ERR(svn_io_check_path(txn_dir, &kind, iterpool));
      if (kind == svn_node_none)
        {
          svn_io_dir_make(txn_dir, APR_OS_DEFAULT, iterpool);
          break;
        }

      ++cb->txn_number;
    }



  SVN_ERR(svn_io_write_atomic2(txn_current_path, new_id_str,
                               svn__ui64tobase36(new_id_str,
                                                 cb->txn_number + 1),
                               txn_current_path, FALSE, scratch_pool));

  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
