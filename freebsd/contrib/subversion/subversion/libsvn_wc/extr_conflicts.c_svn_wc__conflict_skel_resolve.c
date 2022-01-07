
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_wc__db_t ;
struct TYPE_7__ {struct TYPE_7__* next; struct TYPE_7__* children; } ;
typedef TYPE_1__ svn_skel_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_INCOMPLETE_DATA ;
 int * SVN_NO_ERROR ;
 char const* SVN_WC__CONFLICT_KIND_PROP ;
 char const* SVN_WC__CONFLICT_KIND_TEXT ;
 char const* SVN_WC__CONFLICT_KIND_TREE ;
 int _ (char*) ;
 int conflict__get_operation (TYPE_1__**,TYPE_1__*) ;
 int * svn_error_create (int ,int *,int ) ;
 scalar_t__ svn_skel__matches_atom (TYPE_1__*,char const*) ;
 int svn_wc__conflict_skel_is_complete (int*,TYPE_1__*) ;

svn_error_t *
svn_wc__conflict_skel_resolve(svn_boolean_t *completely_resolved,
                              svn_skel_t *conflict_skel,
                              svn_wc__db_t *db,
                              const char *wri_abspath,
                              svn_boolean_t resolve_text,
                              const char *resolve_prop,
                              svn_boolean_t resolve_tree,
                              apr_pool_t *result_pool,
                              apr_pool_t *scratch_pool)
{
  svn_skel_t *op;
  svn_skel_t **pconflict;
  SVN_ERR(conflict__get_operation(&op, conflict_skel));

  if (!op)
    return svn_error_create(SVN_ERR_INCOMPLETE_DATA, ((void*)0),
                            _("Not a completed conflict skel"));





  pconflict = &(conflict_skel->children->next->children);
  while (*pconflict)
    {
      svn_skel_t *c = (*pconflict)->children;

      if (resolve_text
          && svn_skel__matches_atom(c, SVN_WC__CONFLICT_KIND_TEXT))
        {

          *pconflict = (*pconflict)->next;
          continue;
        }
      else if (resolve_prop
               && svn_skel__matches_atom(c, SVN_WC__CONFLICT_KIND_PROP))
        {
          svn_skel_t **ppropnames = &(c->next->next->children);

          if (resolve_prop[0] == '\0')
            *ppropnames = ((void*)0);
          else
            while (*ppropnames)
              {
                if (svn_skel__matches_atom(*ppropnames, resolve_prop))
                  {
                    *ppropnames = (*ppropnames)->next;
                    break;
                  }
                ppropnames = &((*ppropnames)->next);
              }


          if (!c->next->next->children)
            {

             *pconflict = (*pconflict)->next;
             continue;
            }
        }
      else if (resolve_tree
               && svn_skel__matches_atom(c, SVN_WC__CONFLICT_KIND_TREE))
        {

          *pconflict = (*pconflict)->next;
          continue;
        }

      pconflict = &((*pconflict)->next);
    }

  if (completely_resolved)
    {

      svn_boolean_t complete_conflict;
      SVN_ERR(svn_wc__conflict_skel_is_complete(&complete_conflict,
                                                conflict_skel));

      *completely_resolved = !complete_conflict;
    }
  return SVN_NO_ERROR;
}
