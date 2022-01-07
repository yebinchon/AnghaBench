
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int apr_pool_t ;


 int TRUE ;
 int * svn_base64_encode2 (int *,int ,int *) ;

svn_stream_t *
svn_base64_encode(svn_stream_t *output, apr_pool_t *pool)
{
  return svn_base64_encode2(output, TRUE, pool);
}
