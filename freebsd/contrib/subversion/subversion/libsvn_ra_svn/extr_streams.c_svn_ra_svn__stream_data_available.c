
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int in_stream; } ;
typedef TYPE_1__ svn_ra_svn__stream_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;


 int * svn_error_trace (int ) ;
 int svn_stream_data_available (int ,int *) ;

svn_error_t *
svn_ra_svn__stream_data_available(svn_ra_svn__stream_t *stream,
                                  svn_boolean_t *data_available)
{
  return svn_error_trace(
          svn_stream_data_available(stream->in_stream,
                                    data_available));
}
