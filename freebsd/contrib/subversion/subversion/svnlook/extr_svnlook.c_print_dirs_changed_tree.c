
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ kind; char action; struct TYPE_3__* sibling; int name; struct TYPE_3__* child; scalar_t__ prop_mod; } ;
typedef TYPE_1__ svn_repos_node_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int * check_cancel (int *) ;
 int * svn_cmdline_printf (int *,char*,char const*) ;
 char* svn_dirent_join (char const*,int ,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
print_dirs_changed_tree(svn_repos_node_t *node,
                        const char *path ,
                        apr_pool_t *pool)
{
  svn_repos_node_t *tmp_node;
  svn_boolean_t print_me = FALSE;
  const char *full_path;
  apr_pool_t *iterpool;

  SVN_ERR(check_cancel(((void*)0)));

  if (! node)
    return SVN_NO_ERROR;


  if (node->kind != svn_node_dir)
    return SVN_NO_ERROR;


  if (node->prop_mod)
    print_me = TRUE;


  tmp_node = node->child;
  while (tmp_node && (! print_me))
    {
      if ((tmp_node->kind == svn_node_file)
           || (tmp_node->action == 'A')
           || (tmp_node->action == 'D'))
        {
          print_me = TRUE;
        }
      tmp_node = tmp_node->sibling;
    }


  if (print_me)
    {
      SVN_ERR(svn_cmdline_printf(pool, "%s/\n", path));
    }


  tmp_node = node->child;
  if (! tmp_node)
    return SVN_NO_ERROR;


  iterpool = svn_pool_create(pool);
  while (tmp_node)
    {
      svn_pool_clear(iterpool);
      full_path = svn_dirent_join(path, tmp_node->name, iterpool);
      SVN_ERR(print_dirs_changed_tree(tmp_node, full_path, iterpool));
      tmp_node = tmp_node->sibling;
    }
  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
