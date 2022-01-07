
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_3__ {char action; char* copyfrom_path; int name; struct TYPE_3__* parent; int copyfrom_rev; } ;
typedef TYPE_1__ svn_repos_node_t ;
typedef int apr_pool_t ;


 int SVN_INVALID_REVNUM ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 char* svn_fspath__join (char const*,int ,int *) ;

__attribute__((used)) static void
find_real_base_location(const char **path_p,
                        svn_revnum_t *rev_p,
                        svn_repos_node_t *node,
                        apr_pool_t *pool)
{


  if ((node->action == 'A')
      && node->copyfrom_path
      && SVN_IS_VALID_REVNUM(node->copyfrom_rev))
    {
      *path_p = node->copyfrom_path;
      *rev_p = node->copyfrom_rev;
      return;
    }




  if (node->parent)
    {
      const char *path;
      svn_revnum_t rev;

      find_real_base_location(&path, &rev, node->parent, pool);
      *path_p = svn_fspath__join(path, node->name, pool);
      *rev_p = rev;
      return;
    }



  *path_p = "/";
  *rev_p = SVN_INVALID_REVNUM;
  return;
}
