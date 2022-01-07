
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* path_in_repos; char* repos_url; int peg_rev; int node_kind; } ;
typedef TYPE_1__ svn_wc_conflict_version_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 char* apr_psprintf (int *,char*,int ) ;
 int is_valid_version_info_skel (int *) ;
 int node_kind_map ;
 int skel_prepend_enum (int *,int ,int ,int *) ;
 int * svn_skel__make_empty_list (int *) ;
 int svn_skel__prepend (int *,int *) ;
 int * svn_skel__str_atom (char*,int *) ;

__attribute__((used)) static svn_error_t *
prepend_version_info_skel(svn_skel_t *parent_skel,
                          const svn_wc_conflict_version_t *version_info,
                          apr_pool_t *pool)
{
  svn_skel_t *skel = svn_skel__make_empty_list(pool);


  skel_prepend_enum(skel, node_kind_map, version_info->node_kind, pool);


  svn_skel__prepend(svn_skel__str_atom(version_info->path_in_repos
                                       ? version_info->path_in_repos
                                       : "", pool), skel);


  svn_skel__prepend(svn_skel__str_atom(apr_psprintf(pool, "%ld",
                                                    version_info->peg_rev),
                                       pool), skel);


  svn_skel__prepend(svn_skel__str_atom(version_info->repos_url
                                       ? version_info->repos_url
                                       : "", pool), skel);

  svn_skel__prepend(svn_skel__str_atom("version", pool), skel);

  SVN_ERR_ASSERT(is_valid_version_info_skel(skel));

  svn_skel__prepend(skel, parent_skel);

  return SVN_NO_ERROR;
}
