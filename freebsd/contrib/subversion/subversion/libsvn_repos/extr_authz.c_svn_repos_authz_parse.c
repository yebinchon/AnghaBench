
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int full; int * pool; } ;
typedef TYPE_1__ svn_authz_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int svn_authz__parse (int *,int *,int *,int *,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

svn_error_t *
svn_repos_authz_parse(svn_authz_t **authz_p, svn_stream_t *stream,
                      svn_stream_t *groups_stream, apr_pool_t *pool)
{
  apr_pool_t *scratch_pool = svn_pool_create(pool);
  svn_authz_t *authz = apr_pcalloc(pool, sizeof(*authz));
  authz->pool = pool;


  SVN_ERR(svn_authz__parse(&authz->full, stream, groups_stream, pool,
                           scratch_pool));

  svn_pool_destroy(scratch_pool);

  *authz_p = authz;
  return SVN_NO_ERROR;
}
