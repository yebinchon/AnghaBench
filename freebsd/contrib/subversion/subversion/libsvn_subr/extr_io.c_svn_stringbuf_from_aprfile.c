
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int TRUE ;
 int * stringbuf_from_aprfile (int **,int *,int *,int ,int *) ;

svn_error_t *
svn_stringbuf_from_aprfile(svn_stringbuf_t **result,
                           apr_file_t *file,
                           apr_pool_t *pool)
{
  return stringbuf_from_aprfile(result, ((void*)0), file, TRUE, pool);
}
