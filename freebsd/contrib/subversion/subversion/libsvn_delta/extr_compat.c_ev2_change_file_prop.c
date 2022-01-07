
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_error_t ;
struct ev2_file_baton {int base_revision; int path; int eb; } ;
struct change_node {int unlock; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_ENTRY_LOCK_TOKEN ;
 int TRUE ;
 int apply_propedit (int ,int ,int ,int ,char const*,int const*,int *) ;
 struct change_node* locate_change (int ,char const*) ;
 char* map_to_repos_relpath (int ,int ,int *) ;
 int strcmp (char const*,int ) ;
 int svn_node_file ;

__attribute__((used)) static svn_error_t *
ev2_change_file_prop(void *file_baton,
                     const char *name,
                     const svn_string_t *value,
                     apr_pool_t *scratch_pool)
{
  struct ev2_file_baton *fb = file_baton;

  if (!strcmp(name, SVN_PROP_ENTRY_LOCK_TOKEN) && value == ((void*)0))
    {




      const char *relpath = map_to_repos_relpath(fb->eb, fb->path,
                                                 scratch_pool);
      struct change_node *change = locate_change(fb->eb, relpath);

      change->unlock = TRUE;
    }

  SVN_ERR(apply_propedit(fb->eb, fb->path, svn_node_file, fb->base_revision,
                         name, value, scratch_pool));

  return SVN_NO_ERROR;
}
