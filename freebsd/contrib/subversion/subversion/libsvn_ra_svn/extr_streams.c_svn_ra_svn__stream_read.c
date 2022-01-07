
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int in_stream; } ;
typedef TYPE_1__ svn_ra_svn__stream_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_size_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_RA_SVN_CONNECTION_CLOSED ;
 int * SVN_NO_ERROR ;
 int * svn_error_create (int ,int *,int *) ;
 int svn_stream_read2 (int ,char*,scalar_t__*) ;

svn_error_t *
svn_ra_svn__stream_read(svn_ra_svn__stream_t *stream, char *data,
                        apr_size_t *len)
{
  SVN_ERR(svn_stream_read2(stream->in_stream, data, len));

  if (*len == 0)
    return svn_error_create(SVN_ERR_RA_SVN_CONNECTION_CLOSED, ((void*)0), ((void*)0));

  return SVN_NO_ERROR;
}
