
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int FALSE ;
 int TRUE ;
 int * make_stream_from_apr_file (int *,int ,int ,int ,int *) ;

svn_stream_t *
svn_stream_from_aprfile2(apr_file_t *file,
                         svn_boolean_t disown,
                         apr_pool_t *pool)
{
  return make_stream_from_apr_file(file, disown, TRUE, FALSE, pool);
}
