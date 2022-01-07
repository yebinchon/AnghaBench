
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int svn_wc__db_t ;
struct TYPE_12__ {TYPE_1__* children; } ;
typedef TYPE_2__ svn_skel_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
struct TYPE_11__ {TYPE_2__* next; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 char const* SVN_WC__CONFLICT_KIND_PROP ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this_key (int *) ;
 char const* apr_pstrdup (int *,int ) ;
 int conflict__get_conflict (TYPE_2__**,TYPE_2__*,char const*) ;
 TYPE_2__* svn_skel__make_empty_list (int *) ;
 int svn_skel__prepend (TYPE_2__*,TYPE_2__*) ;
 int svn_skel__prepend_str (char const*,TYPE_2__*,int *) ;
 int svn_skel__unparse_proplist (TYPE_2__**,int const*,int *) ;
 int svn_wc__db_to_relpath (char const**,int *,char const*,char const*,int *,int *) ;

svn_error_t *
svn_wc__conflict_skel_add_prop_conflict(svn_skel_t *conflict_skel,
                                        svn_wc__db_t *db,
                                        const char *wri_abspath,
                                        const char *marker_abspath,
                                        const apr_hash_t *mine_props,
                                        const apr_hash_t *their_old_props,
                                        const apr_hash_t *their_props,
                                        const apr_hash_t *conflicted_prop_names,
                                        apr_pool_t *result_pool,
                                        apr_pool_t *scratch_pool)
{
  svn_skel_t *prop_conflict;
  svn_skel_t *props;
  svn_skel_t *conflict_names;
  svn_skel_t *markers;
  apr_hash_index_t *hi;

  SVN_ERR(conflict__get_conflict(&prop_conflict, conflict_skel,
                                 SVN_WC__CONFLICT_KIND_PROP));

  SVN_ERR_ASSERT(!prop_conflict);
  prop_conflict = svn_skel__make_empty_list(result_pool);

  if (their_props)
    {
      SVN_ERR(svn_skel__unparse_proplist(&props, their_props, result_pool));
      svn_skel__prepend(props, prop_conflict);
    }
  else
    svn_skel__prepend_str("", prop_conflict, result_pool);

  if (mine_props)
    {
      SVN_ERR(svn_skel__unparse_proplist(&props, mine_props, result_pool));
      svn_skel__prepend(props, prop_conflict);
    }
  else
    svn_skel__prepend_str("", prop_conflict, result_pool);

  if (their_old_props)
    {
      SVN_ERR(svn_skel__unparse_proplist(&props, their_old_props,
                                         result_pool));
      svn_skel__prepend(props, prop_conflict);
    }
  else
    svn_skel__prepend_str("", prop_conflict, result_pool);

  conflict_names = svn_skel__make_empty_list(result_pool);
  for (hi = apr_hash_first(scratch_pool, (apr_hash_t *)conflicted_prop_names);
       hi;
       hi = apr_hash_next(hi))
    {
      svn_skel__prepend_str(apr_pstrdup(result_pool, apr_hash_this_key(hi)),
                            conflict_names,
                            result_pool);
    }
  svn_skel__prepend(conflict_names, prop_conflict);

  markers = svn_skel__make_empty_list(result_pool);

  if (marker_abspath)
    {
      const char *marker_relpath;
      SVN_ERR(svn_wc__db_to_relpath(&marker_relpath, db, wri_abspath,
                                    marker_abspath,
                                    result_pool, scratch_pool));

      svn_skel__prepend_str(marker_relpath, markers, result_pool);
    }



  svn_skel__prepend(markers, prop_conflict);

  svn_skel__prepend_str(SVN_WC__CONFLICT_KIND_PROP, prop_conflict, result_pool);


  svn_skel__prepend(prop_conflict, conflict_skel->children->next);

  return SVN_NO_ERROR;
}
