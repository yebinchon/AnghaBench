
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_wc__db_t ;
struct TYPE_6__ {scalar_t__ is_atom; struct TYPE_6__* next; int len; int data; struct TYPE_6__* children; } ;
typedef TYPE_1__ svn_skel_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_WC_MISSING ;
 int * SVN_NO_ERROR ;
 int SVN_WC__CONFLICT_KIND_PROP ;
 int _ (char*) ;
 int * apr_hash_make (int *) ;
 char* apr_pstrmemdup (int *,int ,int ) ;
 int conflict__get_conflict (TYPE_1__**,TYPE_1__ const*,int ) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_hash_sets (int *,char*,char*) ;
 int svn_skel__parse_proplist (int **,TYPE_1__ const*,int *) ;
 int svn_wc__db_from_relpath (char const**,int *,char const*,char const*,int *,int *) ;

svn_error_t *
svn_wc__conflict_read_prop_conflict(const char **marker_abspath,
                                    apr_hash_t **mine_props,
                                    apr_hash_t **their_old_props,
                                    apr_hash_t **their_props,
                                    apr_hash_t **conflicted_prop_names,
                                    svn_wc__db_t *db,
                                    const char *wri_abspath,
                                    const svn_skel_t *conflict_skel,
                                    apr_pool_t *result_pool,
                                    apr_pool_t *scratch_pool)
{
  svn_skel_t *prop_conflict;
  const svn_skel_t *c;

  SVN_ERR(conflict__get_conflict(&prop_conflict, conflict_skel,
                                 SVN_WC__CONFLICT_KIND_PROP));

  if (!prop_conflict)
    return svn_error_create(SVN_ERR_WC_MISSING, ((void*)0), _("Conflict not set"));

  c = prop_conflict->children;

  c = c->next;


  if (marker_abspath)
    {
      const char *marker_relpath;

      if (c->children && c->children->is_atom)
        {
          marker_relpath = apr_pstrmemdup(result_pool, c->children->data,
                                        c->children->len);

          SVN_ERR(svn_wc__db_from_relpath(marker_abspath, db, wri_abspath,
                                          marker_relpath,
                                          result_pool, scratch_pool));
        }
      else
        *marker_abspath = ((void*)0);
    }
  c = c->next;


  if (conflicted_prop_names)
    {
      const svn_skel_t *name;
      *conflicted_prop_names = apr_hash_make(result_pool);

      for (name = c->children; name; name = name->next)
        {
          svn_hash_sets(*conflicted_prop_names,
                        apr_pstrmemdup(result_pool, name->data, name->len),
                        "");
        }
    }
  c = c->next;


  if (their_old_props)
    {
      if (c->is_atom)
        *their_old_props = apr_hash_make(result_pool);
      else
        SVN_ERR(svn_skel__parse_proplist(their_old_props, c, result_pool));
    }
  c = c->next;


  if (mine_props)
    {
      if (c->is_atom)
        *mine_props = apr_hash_make(result_pool);
      else
        SVN_ERR(svn_skel__parse_proplist(mine_props, c, result_pool));
    }
  c = c->next;


  if (their_props)
    {
      if (c->is_atom)
        *their_props = apr_hash_make(result_pool);
      else
        SVN_ERR(svn_skel__parse_proplist(their_props, c, result_pool));
    }

  return SVN_NO_ERROR;
}
