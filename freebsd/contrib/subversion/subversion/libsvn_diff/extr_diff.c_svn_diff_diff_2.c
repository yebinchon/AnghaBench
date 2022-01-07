
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_diff_t ;
struct TYPE_4__ {int (* token_discard_all ) (void*) ;int (* datasources_open ) (void*,int *,int *,int *,int) ;} ;
typedef TYPE_1__ svn_diff_fns2_t ;
typedef int svn_diff_datasource_e ;
typedef int svn_diff__tree_t ;
typedef int svn_diff__token_index_t ;
typedef int svn_diff__position_t ;
typedef int svn_diff__lcs_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int stub1 (void*,int *,int *,int *,int) ;
 int stub2 (void*) ;
 int * svn_diff__diff (int *,int,int,int ,int *) ;
 int svn_diff__get_node_count (int *) ;
 int * svn_diff__get_token_counts (int *,int ,int *) ;
 int svn_diff__get_tokens (int **,int *,void*,TYPE_1__ const*,int ,int ,int *) ;
 int * svn_diff__lcs (int *,int *,int *,int *,int ,int ,int ,int *) ;
 int svn_diff__tree_create (int **,int *) ;
 int svn_diff_datasource_modified ;
 int svn_diff_datasource_original ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

svn_error_t *
svn_diff_diff_2(svn_diff_t **diff,
                void *diff_baton,
                const svn_diff_fns2_t *vtable,
                apr_pool_t *pool)
{
  svn_diff__tree_t *tree;
  svn_diff__position_t *position_list[2];
  svn_diff__token_index_t num_tokens;
  svn_diff__token_index_t *token_counts[2];
  svn_diff_datasource_e datasource[] = {svn_diff_datasource_original,
                                        svn_diff_datasource_modified};
  svn_diff__lcs_t *lcs;
  apr_pool_t *subpool;
  apr_pool_t *treepool;
  apr_off_t prefix_lines = 0;
  apr_off_t suffix_lines = 0;

  *diff = ((void*)0);

  subpool = svn_pool_create(pool);
  treepool = svn_pool_create(pool);

  svn_diff__tree_create(&tree, treepool);

  SVN_ERR(vtable->datasources_open(diff_baton, &prefix_lines, &suffix_lines,
                                   datasource, 2));


  SVN_ERR(svn_diff__get_tokens(&position_list[0],
                               tree,
                               diff_baton, vtable,
                               svn_diff_datasource_original,
                               prefix_lines,
                               subpool));

  SVN_ERR(svn_diff__get_tokens(&position_list[1],
                               tree,
                               diff_baton, vtable,
                               svn_diff_datasource_modified,
                               prefix_lines,
                               subpool));

  num_tokens = svn_diff__get_node_count(tree);




  if (vtable->token_discard_all != ((void*)0))
    vtable->token_discard_all(diff_baton);


  svn_pool_destroy(treepool);

  token_counts[0] = svn_diff__get_token_counts(position_list[0], num_tokens,
                                               subpool);
  token_counts[1] = svn_diff__get_token_counts(position_list[1], num_tokens,
                                               subpool);


  lcs = svn_diff__lcs(position_list[0], position_list[1], token_counts[0],
                      token_counts[1], num_tokens, prefix_lines,
                      suffix_lines, subpool);


  *diff = svn_diff__diff(lcs, 1, 1, TRUE, pool);


  svn_pool_destroy(subpool);

  return SVN_NO_ERROR;
}
