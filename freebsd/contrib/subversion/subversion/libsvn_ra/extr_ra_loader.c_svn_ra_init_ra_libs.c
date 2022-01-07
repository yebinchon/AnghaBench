
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;

svn_error_t *
svn_ra_init_ra_libs(void **ra_baton,
                    apr_pool_t *pool)
{
  *ra_baton = pool;
  return SVN_NO_ERROR;
}
