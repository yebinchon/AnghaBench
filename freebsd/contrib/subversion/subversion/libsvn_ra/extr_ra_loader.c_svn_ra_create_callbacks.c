
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_callbacks2_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int * apr_pcalloc (int *,int) ;

svn_error_t *
svn_ra_create_callbacks(svn_ra_callbacks2_t **callbacks,
                        apr_pool_t *pool)
{
  *callbacks = apr_pcalloc(pool, sizeof(**callbacks));
  return SVN_NO_ERROR;
}
