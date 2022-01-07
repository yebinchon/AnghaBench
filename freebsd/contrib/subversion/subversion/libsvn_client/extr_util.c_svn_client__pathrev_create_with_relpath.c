
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_client__pathrev_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT_NO_RETURN (int ) ;
 int * svn_client__pathrev_create (char const*,char const*,int ,int ,int *) ;
 int svn_path_url_add_component2 (char const*,char const*,int *) ;
 int svn_relpath_is_canonical (char const*) ;

svn_client__pathrev_t *
svn_client__pathrev_create_with_relpath(const char *repos_root_url,
                                        const char *repos_uuid,
                                        svn_revnum_t rev,
                                        const char *relpath,
                                        apr_pool_t *result_pool)
{
  SVN_ERR_ASSERT_NO_RETURN(svn_relpath_is_canonical(relpath));

  return svn_client__pathrev_create(
           repos_root_url, repos_uuid, rev,
           svn_path_url_add_component2(repos_root_url, relpath, result_pool),
           result_pool);
}
