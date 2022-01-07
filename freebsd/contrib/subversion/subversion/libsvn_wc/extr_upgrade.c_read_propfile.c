
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int svn_stream_t ;
struct TYPE_12__ {int apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_13__ {scalar_t__ size; } ;
typedef TYPE_2__ apr_finfo_t ;


 int APR_FINFO_SIZE ;
 scalar_t__ APR_STATUS_IS_ENOENT (int ) ;
 int SVN_ERR (TYPE_1__*) ;
 int SVN_HASH_TERMINATOR ;
 TYPE_1__* SVN_NO_ERROR ;
 scalar_t__ SVN__APR_STATUS_IS_ENOTDIR (int ) ;
 int * apr_hash_make (int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (int ) ;
 TYPE_1__* svn_hash_read2 (int *,int *,int ,int *) ;
 TYPE_1__* svn_io_stat (TYPE_2__*,char const*,int ,int *) ;
 int svn_stream_close (int *) ;
 TYPE_1__* svn_stream_open_readonly (int **,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
read_propfile(apr_hash_t **props,
              const char *propfile_abspath,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  svn_stream_t *stream;
  apr_finfo_t finfo;

  err = svn_io_stat(&finfo, propfile_abspath, APR_FINFO_SIZE, scratch_pool);

  if (err
      && (APR_STATUS_IS_ENOENT(err->apr_err)
          || SVN__APR_STATUS_IS_ENOTDIR(err->apr_err)))
    {
      svn_error_clear(err);


      *props = ((void*)0);
      return SVN_NO_ERROR;
    }
  else
    SVN_ERR(err);



  if (finfo.size == 0)
    {
      *props = apr_hash_make(result_pool);
      return SVN_NO_ERROR;
    }

  SVN_ERR(svn_stream_open_readonly(&stream, propfile_abspath,
                                   scratch_pool, scratch_pool));
  *props = apr_hash_make(result_pool);
  SVN_ERR(svn_hash_read2(*props, stream, SVN_HASH_TERMINATOR, result_pool));

  return svn_error_trace(svn_stream_close(stream));
}
