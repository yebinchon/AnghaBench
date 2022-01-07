
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* repos_url; char const* path_in_repos; char const* repos_uuid; int node_kind; int peg_rev; } ;
typedef TYPE_1__ svn_wc_conflict_version_t ;
typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT_NO_RETURN (int) ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 scalar_t__ svn_relpath_is_canonical (char const*) ;
 scalar_t__ svn_uri_is_canonical (char const*,int *) ;

svn_wc_conflict_version_t *
svn_wc_conflict_version_create2(const char *repos_url,
                                const char *repos_uuid,
                                const char *repos_relpath,
                                svn_revnum_t revision,
                                svn_node_kind_t kind,
                                apr_pool_t *result_pool)
{
  svn_wc_conflict_version_t *version;

  version = apr_pcalloc(result_pool, sizeof(*version));

    SVN_ERR_ASSERT_NO_RETURN(svn_uri_is_canonical(repos_url, result_pool)
                             && svn_relpath_is_canonical(repos_relpath)
                             && SVN_IS_VALID_REVNUM(revision)
                                                                );

  version->repos_url = repos_url;
  version->peg_rev = revision;
  version->path_in_repos = repos_relpath;
  version->node_kind = kind;
  version->repos_uuid = repos_uuid;

  return version;
}
