
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_prop_t ;
typedef int svn_boolean_t ;
struct edit_baton {int dummy; } ;
struct dir_baton {int users; int base_revision; int propchanges; int path; int * pool; void* skip_children; void* skip; void* tree_conflicted; int added; struct edit_baton* edit_baton; struct dir_baton* parent_baton; } ;
typedef int apr_pool_t ;


 void* FALSE ;
 int apr_array_make (int *,int,int) ;
 struct dir_baton* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 int * svn_pool_create (int *) ;

__attribute__((used)) static struct dir_baton *
make_dir_baton(const char *path,
               struct dir_baton *parent_baton,
               struct edit_baton *edit_baton,
               svn_boolean_t added,
               svn_revnum_t base_revision,
               apr_pool_t *result_pool)
{
  apr_pool_t *dir_pool = svn_pool_create(result_pool);
  struct dir_baton *dir_baton = apr_pcalloc(dir_pool, sizeof(*dir_baton));

  dir_baton->parent_baton = parent_baton;
  dir_baton->edit_baton = edit_baton;
  dir_baton->added = added;
  dir_baton->tree_conflicted = FALSE;
  dir_baton->skip = FALSE;
  dir_baton->skip_children = FALSE;
  dir_baton->pool = dir_pool;
  dir_baton->path = apr_pstrdup(dir_pool, path);
  dir_baton->propchanges = apr_array_make(dir_pool, 8, sizeof(svn_prop_t));
  dir_baton->base_revision = base_revision;
  dir_baton->users++;

  if (parent_baton)
    parent_baton->users++;

  return dir_baton;
}
