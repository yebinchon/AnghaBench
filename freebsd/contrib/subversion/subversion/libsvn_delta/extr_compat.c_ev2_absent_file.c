
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct ev2_dir_baton {int eb; } ;
struct change_node {int kind; int action; } ;
typedef int apr_pool_t ;


 int RESTRUCTURE_ADD_ABSENT ;
 int * SVN_NO_ERROR ;
 struct change_node* locate_change (int ,char const*) ;
 char* map_to_repos_relpath (int ,char const*,int *) ;
 int svn_node_file ;

__attribute__((used)) static svn_error_t *
ev2_absent_file(const char *path,
                void *parent_baton,
                apr_pool_t *scratch_pool)
{
  struct ev2_dir_baton *pb = parent_baton;
  const char *relpath = map_to_repos_relpath(pb->eb, path, scratch_pool);
  struct change_node *change = locate_change(pb->eb, relpath);


  change->action = RESTRUCTURE_ADD_ABSENT;
  change->kind = svn_node_file;

  return SVN_NO_ERROR;
}
