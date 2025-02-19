
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
typedef int apr_uint64_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int APR_OS_DEFAULT ;
 int APR_TRUNCATE ;
 int APR_WRITE ;
 int SVN_ERR (int ) ;
 int SVN_INT64_BUFFER_SIZE ;
 int path_txn_next_ids (int *,int const*,int *) ;
 int svn__ui64tobase36 (char*,int ) ;
 int * svn_io_file_close (int *,int *) ;
 int svn_io_file_open (int **,int ,int,int ,int *) ;
 int svn_io_file_write_full (int *,char*,int,int *,int *) ;

__attribute__((used)) static svn_error_t *
write_next_ids(svn_fs_t *fs,
               const svn_fs_fs__id_part_t *txn_id,
               apr_uint64_t node_id,
               apr_uint64_t copy_id,
               apr_pool_t *pool)
{
  apr_file_t *file;
  char buffer[2 * SVN_INT64_BUFFER_SIZE + 2];
  char *p = buffer;

  p += svn__ui64tobase36(p, node_id);
  *(p++) = ' ';
  p += svn__ui64tobase36(p, copy_id);
  *(p++) = '\n';
  *(p++) = '\0';

  SVN_ERR(svn_io_file_open(&file,
                           path_txn_next_ids(fs, txn_id, pool),
                           APR_WRITE | APR_TRUNCATE,
                           APR_OS_DEFAULT, pool));
  SVN_ERR(svn_io_file_write_full(file, buffer, p - buffer, ((void*)0), pool));
  return svn_io_file_close(file, pool);
}
