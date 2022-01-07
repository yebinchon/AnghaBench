
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {int filetype; } ;
typedef TYPE_2__ apr_finfo_t ;


 int APR_FINFO_LINK ;
 int APR_FINFO_MIN ;


 int SVN_ERR (int ) ;
 int SVN_ERR_MALFUNCTION () ;
 int * SVN_NO_ERROR ;
 int svn_io_read_link (TYPE_1__**,char const*,int *) ;
 int svn_io_stat (TYPE_2__*,char const*,int,int *) ;
 int * svn_stream_from_string (int ,int *) ;
 int svn_stream_open_readonly (int **,char const*,int *,int *) ;
 int svn_string_createf (int *,char*,int ) ;

svn_error_t *
svn_subst_read_specialfile(svn_stream_t **stream,
                           const char *path,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  apr_finfo_t finfo;
  svn_string_t *buf;



  SVN_ERR(svn_io_stat(&finfo, path, APR_FINFO_MIN | APR_FINFO_LINK,
                      scratch_pool));

  switch (finfo.filetype) {
  case 128:


    SVN_ERR(svn_stream_open_readonly(stream, path, result_pool, scratch_pool));
    break;

  case 129:

    SVN_ERR(svn_io_read_link(&buf, path, scratch_pool));
    *stream = svn_stream_from_string(svn_string_createf(result_pool,
                                                        "link %s",
                                                        buf->data),
                                     result_pool);
    break;

  default:
    SVN_ERR_MALFUNCTION();
  }

  return SVN_NO_ERROR;
}
