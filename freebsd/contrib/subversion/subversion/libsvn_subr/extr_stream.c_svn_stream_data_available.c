
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int baton; int (* data_available_fn ) (int ,int *) ;} ;
typedef TYPE_1__ svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;


 int SVN_ERR_STREAM_NOT_SUPPORTED ;
 int stub1 (int ,int *) ;
 int * svn_error_create (int ,int *,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_stream_data_available(svn_stream_t *stream,
                          svn_boolean_t *data_available)
{
  if (stream->data_available_fn == ((void*)0))
    return svn_error_create(SVN_ERR_STREAM_NOT_SUPPORTED, ((void*)0), ((void*)0));

  return svn_error_trace(stream->data_available_fn(stream->baton,
                                                   data_available));
}
