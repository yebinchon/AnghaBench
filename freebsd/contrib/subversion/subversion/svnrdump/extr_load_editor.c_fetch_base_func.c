
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef scalar_t__ svn_revnum_t ;
struct TYPE_10__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
struct revision_baton {TYPE_1__* pb; scalar_t__ rev; } ;
typedef int apr_pool_t ;
struct TYPE_9__ {int aux_session; } ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_FS_NOT_FOUND ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 TYPE_2__* SVN_NO_ERROR ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 int svn_io_file_del_on_pool_cleanup ;
 TYPE_2__* svn_ra_get_file (int ,char const*,scalar_t__,int *,int *,int *,int *) ;
 int svn_stream_close (int *) ;
 int svn_stream_open_unique (int **,char const**,int *,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
fetch_base_func(const char **filename,
                void *baton,
                const char *path,
                svn_revnum_t base_revision,
                apr_pool_t *result_pool,
                apr_pool_t *scratch_pool)
{
  struct revision_baton *rb = baton;
  svn_stream_t *fstream;
  svn_error_t *err;

  if (! SVN_IS_VALID_REVNUM(base_revision))
    base_revision = rb->rev - 1;

  SVN_ERR(svn_stream_open_unique(&fstream, filename, ((void*)0),
                                 svn_io_file_del_on_pool_cleanup,
                                 result_pool, scratch_pool));

  err = svn_ra_get_file(rb->pb->aux_session, path, base_revision,
                        fstream, ((void*)0), ((void*)0), scratch_pool);
  if (err && err->apr_err == SVN_ERR_FS_NOT_FOUND)
    {
      svn_error_clear(err);
      SVN_ERR(svn_stream_close(fstream));

      *filename = ((void*)0);
      return SVN_NO_ERROR;
    }
  else if (err)
    return svn_error_trace(err);

  SVN_ERR(svn_stream_close(fstream));

  return SVN_NO_ERROR;
}
