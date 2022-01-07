
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_conflict_version_t ;
typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
typedef int apr_pool_t ;


 int * svn_wc_conflict_version_create2 (char const*,int *,char const*,int ,int ,int *) ;

svn_wc_conflict_version_t *
svn_wc_conflict_version_create(const char *repos_url,
                               const char *path_in_repos,
                               svn_revnum_t peg_rev,
                               svn_node_kind_t node_kind,
                               apr_pool_t *pool)
{
  return svn_wc_conflict_version_create2(repos_url, ((void*)0), path_in_repos,
                                         peg_rev, node_kind, pool);
}
