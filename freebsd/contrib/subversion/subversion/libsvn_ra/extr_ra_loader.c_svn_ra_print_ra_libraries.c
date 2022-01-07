
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * svn_ra_print_modules (int *,int *) ;
 int * svn_stringbuf_create_empty (int *) ;

svn_error_t *
svn_ra_print_ra_libraries(svn_stringbuf_t **descriptions,
                          void *ra_baton,
                          apr_pool_t *pool)
{
  *descriptions = svn_stringbuf_create_empty(pool);
  return svn_ra_print_modules(*descriptions, pool);
}
