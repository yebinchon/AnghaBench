
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_3__ {int revnum_to_bc; } ;
typedef TYPE_1__ svn_ra_serf__blncache_t ;
typedef int svn_error_t ;
typedef int revnum ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 char* apr_hash_get (int ,int *,int) ;
 char* apr_pstrdup (int *,char const*) ;

svn_error_t *
svn_ra_serf__blncache_get_bc_url(const char **bc_url_p,
                                 svn_ra_serf__blncache_t *blncache,
                                 svn_revnum_t revnum,
                                 apr_pool_t *result_pool)
{
  const char *value = apr_hash_get(blncache->revnum_to_bc,
                                   &revnum, sizeof(revnum));
  *bc_url_p = value ? apr_pstrdup(result_pool, value) : ((void*)0);
  return SVN_NO_ERROR;
}
