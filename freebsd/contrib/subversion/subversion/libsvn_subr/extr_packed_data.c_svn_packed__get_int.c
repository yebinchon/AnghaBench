
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_packed__int_stream_t ;
typedef int apr_int64_t ;


 int svn_packed__get_uint (int *) ;

apr_int64_t
svn_packed__get_int(svn_packed__int_stream_t *stream)
{
  return (apr_int64_t)svn_packed__get_uint(stream);
}
