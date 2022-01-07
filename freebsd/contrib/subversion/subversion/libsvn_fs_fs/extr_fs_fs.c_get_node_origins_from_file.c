
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_fs_t ;
struct TYPE_11__ {int apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_file_t ;


 int APR_OS_DEFAULT ;
 int APR_READ ;
 scalar_t__ APR_STATUS_IS_ENOENT (int ) ;
 int FALSE ;
 int SVN_ERR (TYPE_1__*) ;
 int SVN_HASH_TERMINATOR ;
 TYPE_1__* SVN_NO_ERROR ;
 int _ (char*) ;
 int * apr_hash_make (int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_quick_wrapf (TYPE_1__*,int ,char const*) ;
 TYPE_1__* svn_hash_read2 (int *,int *,int ,int *) ;
 TYPE_1__* svn_io_file_open (int **,char const*,int ,int ,int *) ;
 TYPE_1__* svn_stream_close (int *) ;
 int * svn_stream_from_aprfile2 (int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
get_node_origins_from_file(svn_fs_t *fs,
                           apr_hash_t **node_origins,
                           const char *node_origins_file,
                           apr_pool_t *pool)
{
  apr_file_t *fd;
  svn_error_t *err;
  svn_stream_t *stream;

  *node_origins = ((void*)0);
  err = svn_io_file_open(&fd, node_origins_file,
                         APR_READ, APR_OS_DEFAULT, pool);
  if (err && APR_STATUS_IS_ENOENT(err->apr_err))
    {
      svn_error_clear(err);
      return SVN_NO_ERROR;
    }
  SVN_ERR(err);

  stream = svn_stream_from_aprfile2(fd, FALSE, pool);
  *node_origins = apr_hash_make(pool);
  err = svn_hash_read2(*node_origins, stream, SVN_HASH_TERMINATOR, pool);
  if (err)
    return svn_error_quick_wrapf(err, _("malformed node origin data in '%s'"),
                                 node_origins_file);
  return svn_stream_close(stream);
}
