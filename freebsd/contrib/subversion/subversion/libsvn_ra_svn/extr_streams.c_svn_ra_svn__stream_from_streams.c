
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_ra_svn__stream_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int file_timeout_cb ;
 int * svn_ra_svn__stream_create (int *,int *,int *,int ,int *) ;
 int * svn_stream__aprfile (int *) ;

svn_ra_svn__stream_t *
svn_ra_svn__stream_from_streams(svn_stream_t *in_stream,
                                svn_stream_t *out_stream,
                                apr_pool_t *pool)
{
  apr_file_t *file;
  file = svn_stream__aprfile(out_stream);

  return svn_ra_svn__stream_create(in_stream, out_stream,
                                   file, file_timeout_cb,
                                   pool);
}
