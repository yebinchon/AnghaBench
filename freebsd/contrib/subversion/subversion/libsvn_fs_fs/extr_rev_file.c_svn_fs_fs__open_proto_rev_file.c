
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_fs_t ;
struct TYPE_4__ {int stream; int start_revision; int is_packed; int * file; } ;
typedef TYPE_1__ svn_fs_fs__revision_file_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int APR_BUFFERED ;
 int APR_OS_DEFAULT ;
 int APR_READ ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int svn_fs_fs__path_txn_proto_rev (int *,int const*,int *) ;
 int svn_io_file_open (int **,int ,int,int ,int *) ;
 int svn_stream_from_aprfile2 (int *,int ,int *) ;

svn_error_t *
svn_fs_fs__open_proto_rev_file(svn_fs_fs__revision_file_t **file,
                               svn_fs_t *fs,
                               const svn_fs_fs__id_part_t *txn_id,
                               apr_pool_t* result_pool,
                               apr_pool_t *scratch_pool)
{
  apr_file_t *apr_file;
  SVN_ERR(svn_io_file_open(&apr_file,
                           svn_fs_fs__path_txn_proto_rev(fs, txn_id,
                                                         scratch_pool),
                           APR_READ | APR_BUFFERED, APR_OS_DEFAULT,
                           result_pool));

  *file = apr_pcalloc(result_pool, sizeof(**file));
  (*file)->file = apr_file;
  (*file)->is_packed = FALSE;
  (*file)->start_revision = SVN_INVALID_REVNUM;
  (*file)->stream = svn_stream_from_aprfile2(apr_file, TRUE, result_pool);

  return SVN_NO_ERROR;
}
