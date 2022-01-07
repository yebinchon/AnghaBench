
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_client_conflict_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int describe_local_dir_node_change (char const**,int *,int *,int *,int *) ;
 int describe_local_file_node_change (char const**,int *,int *,int *,int *) ;
 int describe_local_none_node_change (char const**,int *,int *,int *) ;
 int svn_client_conflict_tree_get_victim_node_kind (int *) ;






__attribute__((used)) static svn_error_t *
conflict_tree_get_local_description_generic(const char **description,
                                            svn_client_conflict_t *conflict,
                                            svn_client_ctx_t *ctx,
                                            apr_pool_t *result_pool,
                                            apr_pool_t *scratch_pool)
{
  svn_node_kind_t victim_node_kind;

  victim_node_kind = svn_client_conflict_tree_get_victim_node_kind(conflict);

  *description = ((void*)0);

  switch (victim_node_kind)
    {
      case 131:
      case 129:
        SVN_ERR(describe_local_file_node_change(description, conflict, ctx,
                                                result_pool, scratch_pool));
        break;
      case 132:
        SVN_ERR(describe_local_dir_node_change(description, conflict, ctx,
                                               result_pool, scratch_pool));
        break;
      case 130:
      case 128:
        SVN_ERR(describe_local_none_node_change(description, conflict,
                                                result_pool, scratch_pool));
        break;
    }

  return SVN_NO_ERROR;
}
