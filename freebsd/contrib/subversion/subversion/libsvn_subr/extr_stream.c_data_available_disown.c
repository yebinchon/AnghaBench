
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;


 int * svn_error_trace (int ) ;
 int svn_stream_data_available (void*,int *) ;

__attribute__((used)) static svn_error_t *
data_available_disown(void *baton, svn_boolean_t *data_available)
{
  return svn_error_trace(svn_stream_data_available(baton, data_available));
}
