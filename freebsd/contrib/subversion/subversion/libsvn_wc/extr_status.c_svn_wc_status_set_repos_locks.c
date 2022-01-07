
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {int repos_root; int * repos_locks; } ;
struct edit_baton {TYPE_1__ wb; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int * SVN_NO_ERROR ;
 int apr_pstrdup (int *,char const*) ;

svn_error_t *
svn_wc_status_set_repos_locks(void *edit_baton,
                              apr_hash_t *locks,
                              const char *repos_root,
                              apr_pool_t *pool)
{
  struct edit_baton *eb = edit_baton;

  eb->wb.repos_locks = locks;
  eb->wb.repos_root = apr_pstrdup(pool, repos_root);

  return SVN_NO_ERROR;
}
