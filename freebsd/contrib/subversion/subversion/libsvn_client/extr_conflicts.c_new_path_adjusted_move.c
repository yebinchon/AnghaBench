
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_node_kind_t ;
struct repos_move_info {int node_kind; int copyfrom_rev; int rev_author; int rev; void* moved_to_repos_relpath; void* moved_from_repos_relpath; } ;
typedef int apr_pool_t ;


 struct repos_move_info* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,int ) ;
 void* svn_relpath_join (void*,char const*,int *) ;

__attribute__((used)) static struct repos_move_info *
new_path_adjusted_move(struct repos_move_info *move,
                       const char *moved_along_relpath,
                       svn_node_kind_t moved_along_node_kind,
                       apr_pool_t *result_pool)
{
  struct repos_move_info *new_move;

  new_move = apr_pcalloc(result_pool, sizeof(*new_move));
  new_move->moved_from_repos_relpath =
    svn_relpath_join(move->moved_from_repos_relpath, moved_along_relpath,
                     result_pool);
  new_move->moved_to_repos_relpath =
    svn_relpath_join(move->moved_to_repos_relpath, moved_along_relpath,
                     result_pool);
  new_move->rev = move->rev;
  new_move->rev_author = apr_pstrdup(result_pool, move->rev_author);
  new_move->copyfrom_rev = move->copyfrom_rev;
  new_move->node_kind = moved_along_node_kind;


  return new_move;
}
