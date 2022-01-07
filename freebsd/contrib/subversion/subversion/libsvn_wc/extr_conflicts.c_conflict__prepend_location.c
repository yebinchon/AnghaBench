
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int repos_url; int repos_uuid; int path_in_repos; int peg_rev; int node_kind; } ;
typedef TYPE_1__ svn_wc_conflict_version_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__CONFLICT_SRC_SUBVERSION ;
 int apr_pstrdup (int *,int ) ;
 int svn_node_kind_to_word (int ) ;
 int * svn_skel__make_empty_list (int *) ;
 int svn_skel__prepend (int *,int *) ;
 int svn_skel__prepend_int (int ,int *,int *) ;
 int svn_skel__prepend_str (int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
conflict__prepend_location(svn_skel_t *skel,
                           const svn_wc_conflict_version_t *location,
                           svn_boolean_t allow_NULL,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  svn_skel_t *loc;
  SVN_ERR_ASSERT(location || allow_NULL);

  if (!location)
    {
      svn_skel__prepend(svn_skel__make_empty_list(result_pool), skel);
      return SVN_NO_ERROR;
    }


  loc = svn_skel__make_empty_list(result_pool);

  svn_skel__prepend_str(svn_node_kind_to_word(location->node_kind),
                        loc, result_pool);

  svn_skel__prepend_int(location->peg_rev, loc, result_pool);

  svn_skel__prepend_str(apr_pstrdup(result_pool, location->path_in_repos), loc,
                        result_pool);

  if (!location->repos_uuid)
    svn_skel__prepend(svn_skel__make_empty_list(result_pool), loc);
  else
    svn_skel__prepend_str(location->repos_uuid, loc, result_pool);

  svn_skel__prepend_str(apr_pstrdup(result_pool, location->repos_url), loc,
                        result_pool);

  svn_skel__prepend_str(SVN_WC__CONFLICT_SRC_SUBVERSION, loc, result_pool);

  svn_skel__prepend(loc, skel);
  return SVN_NO_ERROR;
}
