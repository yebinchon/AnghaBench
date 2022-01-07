
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int TRUE ;
 int * svn_stream_from_aprfile2 (int *,int ,int *) ;

svn_stream_t *
svn_stream_from_aprfile(apr_file_t *file, apr_pool_t *pool)
{
  return svn_stream_from_aprfile2(file, TRUE, pool);
}
