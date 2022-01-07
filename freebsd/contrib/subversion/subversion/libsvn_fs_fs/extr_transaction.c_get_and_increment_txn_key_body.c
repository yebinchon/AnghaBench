
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
struct get_and_increment_txn_key_baton {scalar_t__ txn_number; int pool; TYPE_4__* fs; } ;
struct TYPE_6__ {int flush_to_disk; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef size_t apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {TYPE_2__* fsap_data; } ;


 int SVN_ERR (int ) ;
 int SVN_INT64_BUFFER_SIZE ;
 int * SVN_NO_ERROR ;
 scalar_t__ svn__base36toui64 (int *,int ) ;
 size_t svn__ui64tobase36 (char*,scalar_t__) ;
 char* svn_fs_fs__path_txn_current (TYPE_4__*,int *) ;
 int svn_fs_fs__read_content (TYPE_1__**,char const*,int ) ;
 int svn_io_write_atomic2 (char const*,char*,size_t,char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
get_and_increment_txn_key_body(void *baton, apr_pool_t *pool)
{
  struct get_and_increment_txn_key_baton *cb = baton;
  fs_fs_data_t *ffd = cb->fs->fsap_data;
  const char *txn_current_filename
    = svn_fs_fs__path_txn_current(cb->fs, pool);
  char new_id_str[SVN_INT64_BUFFER_SIZE + 1];
  apr_size_t line_length;

  svn_stringbuf_t *buf;
  SVN_ERR(svn_fs_fs__read_content(&buf, txn_current_filename, cb->pool));


  cb->txn_number = svn__base36toui64(((void*)0), buf->data);


  line_length = svn__ui64tobase36(new_id_str, cb->txn_number+1);
  new_id_str[line_length] = '\n';



  SVN_ERR(svn_io_write_atomic2(txn_current_filename, new_id_str,
                               line_length + 1,
                               txn_current_filename ,
                               ffd->flush_to_disk, pool));

  return SVN_NO_ERROR;
}
