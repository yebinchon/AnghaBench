
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_spillbuf_t ;
typedef int svn_error_t ;
typedef int serf_bucket_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_EOF ;
 scalar_t__ APR_SUCCESS ;
 int SB_BLOCKSIZE ;
 int SB_MAXSIZE ;
 int SERF_READ_ALL_AVAIL ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 scalar_t__ serf_bucket_read (int *,int ,char const**,int *) ;
 int * svn_ra_serf__wrap_err (scalar_t__,int ) ;
 int * svn_spillbuf__create (int ,int ,int *) ;
 int svn_spillbuf__write (int *,char const*,int ,int *) ;

svn_error_t *
svn_ra_serf__copy_into_spillbuf(svn_spillbuf_t **spillbuf,
                                serf_bucket_t *bkt,
                                apr_pool_t *result_pool,
                                apr_pool_t *scratch_pool)
{
  *spillbuf = svn_spillbuf__create(SB_BLOCKSIZE, SB_MAXSIZE, result_pool);


  while (TRUE)
    {
      apr_status_t status;
      const char *data;
      apr_size_t len;

      status = serf_bucket_read(bkt, SERF_READ_ALL_AVAIL, &data, &len);

      if (status != APR_SUCCESS && status != APR_EOF)
        return svn_ra_serf__wrap_err(status, _("Failed to read the request"));

      SVN_ERR(svn_spillbuf__write(*spillbuf, data, len, scratch_pool));

      if (status == APR_EOF)
        break;
    }

  return SVN_NO_ERROR;
}
