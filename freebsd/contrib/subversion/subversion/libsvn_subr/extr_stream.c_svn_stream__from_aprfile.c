
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int TRUE ;
 int * make_stream_from_apr_file (int *,int ,int ,int ,int *) ;

svn_stream_t *
svn_stream__from_aprfile(apr_file_t *file,
                         svn_boolean_t disown,
                         svn_boolean_t truncate_on_seek,
                         apr_pool_t *pool)
{
  return make_stream_from_apr_file(file, disown, TRUE, truncate_on_seek, pool);
}
