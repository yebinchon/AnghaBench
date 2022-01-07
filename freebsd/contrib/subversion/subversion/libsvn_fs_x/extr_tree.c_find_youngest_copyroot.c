
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_3__ {int node; struct TYPE_3__* parent; } ;
typedef TYPE_1__ svn_fs_x__dag_path_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;


 int SVN_ERR (int *) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int svn_fs_x__dag_get_copyroot (int *,char const**,int ) ;

__attribute__((used)) static svn_error_t *
find_youngest_copyroot(svn_revnum_t *rev_p,
                       const char **path_p,
                       svn_fs_t *fs,
                       svn_fs_x__dag_path_t *dag_path)
{
  svn_revnum_t rev_mine;
  svn_revnum_t rev_parent = SVN_INVALID_REVNUM;
  const char *path_mine;
  const char *path_parent = ((void*)0);


  if (dag_path->parent)
    SVN_ERR(find_youngest_copyroot(&rev_parent, &path_parent, fs,
                                   dag_path->parent));


  svn_fs_x__dag_get_copyroot(&rev_mine, &path_mine, dag_path->node);




  if (rev_mine >= rev_parent)
    {
      *rev_p = rev_mine;
      *path_p = path_mine;
    }
  else
    {
      *rev_p = rev_parent;
      *path_p = path_parent;
    }

  return SVN_NO_ERROR;
}
