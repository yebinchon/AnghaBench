
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_4__ {void* url; int rev; void* repos_uuid; void* repos_root_url; } ;
typedef TYPE_1__ svn_client__pathrev_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT_NO_RETURN (int ) ;
 TYPE_1__* apr_palloc (int *,int) ;
 void* apr_pstrdup (int *,char const*) ;
 int svn_path_is_url (char const*) ;

svn_client__pathrev_t *
svn_client__pathrev_create(const char *repos_root_url,
                           const char *repos_uuid,
                           svn_revnum_t rev,
                           const char *url,
                           apr_pool_t *result_pool)
{
  svn_client__pathrev_t *loc = apr_palloc(result_pool, sizeof(*loc));

  SVN_ERR_ASSERT_NO_RETURN(svn_path_is_url(repos_root_url));
  SVN_ERR_ASSERT_NO_RETURN(svn_path_is_url(url));

  loc->repos_root_url = apr_pstrdup(result_pool, repos_root_url);
  loc->repos_uuid = apr_pstrdup(result_pool, repos_uuid);
  loc->rev = rev;
  loc->url = apr_pstrdup(result_pool, url);
  return loc;
}
