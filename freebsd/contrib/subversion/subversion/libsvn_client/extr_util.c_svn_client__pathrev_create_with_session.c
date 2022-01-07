
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int url; int rev; int repos_uuid; int repos_root_url; } ;
typedef TYPE_1__ svn_client__pathrev_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_palloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 int svn_path_is_url (char const*) ;
 int svn_ra_get_repos_root2 (int *,int *,int *) ;
 int svn_ra_get_uuid2 (int *,int *,int *) ;

svn_error_t *
svn_client__pathrev_create_with_session(svn_client__pathrev_t **pathrev_p,
                                        svn_ra_session_t *ra_session,
                                        svn_revnum_t rev,
                                        const char *url,
                                        apr_pool_t *result_pool)
{
  svn_client__pathrev_t *pathrev = apr_palloc(result_pool, sizeof(*pathrev));

  SVN_ERR_ASSERT(svn_path_is_url(url));

  SVN_ERR(svn_ra_get_repos_root2(ra_session, &pathrev->repos_root_url,
                                 result_pool));
  SVN_ERR(svn_ra_get_uuid2(ra_session, &pathrev->repos_uuid, result_pool));
  pathrev->rev = rev;
  pathrev->url = apr_pstrdup(result_pool, url);
  *pathrev_p = pathrev;
  return SVN_NO_ERROR;
}
