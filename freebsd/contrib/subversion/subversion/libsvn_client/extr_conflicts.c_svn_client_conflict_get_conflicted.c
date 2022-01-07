
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int * legacy_tree_conflict; scalar_t__ prop_conflicts; int * legacy_text_conflict; } ;
typedef TYPE_1__ svn_client_conflict_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_array_make (int *,int ,int) ;
 int svn_hash_keys (int **,scalar_t__,int *) ;

svn_error_t *
svn_client_conflict_get_conflicted(svn_boolean_t *text_conflicted,
                                   apr_array_header_t **props_conflicted,
                                   svn_boolean_t *tree_conflicted,
                                   svn_client_conflict_t *conflict,
                                   apr_pool_t *result_pool,
                                   apr_pool_t *scratch_pool)
{
  if (text_conflicted)
    *text_conflicted = (conflict->legacy_text_conflict != ((void*)0));

  if (props_conflicted)
    {
      if (conflict->prop_conflicts)
        SVN_ERR(svn_hash_keys(props_conflicted, conflict->prop_conflicts,
                              result_pool));
      else
        *props_conflicted = apr_array_make(result_pool, 0,
                                           sizeof(const char*));
    }

  if (tree_conflicted)
    *tree_conflicted = (conflict->legacy_tree_conflict != ((void*)0));

  return SVN_NO_ERROR;
}
