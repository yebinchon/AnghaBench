
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_packed__int_stream_t ;
typedef int apr_uint64_t ;
typedef scalar_t__ apr_int64_t ;


 int svn_packed__add_uint (int *,int ) ;

void
svn_packed__add_int(svn_packed__int_stream_t *stream,
                    apr_int64_t value)
{
  svn_packed__add_uint(stream, (apr_uint64_t)value);
}
