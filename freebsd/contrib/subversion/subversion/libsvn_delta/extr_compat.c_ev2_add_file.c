
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct ev2_file_baton {TYPE_1__* eb; int * delta_base; int base_revision; int path; } ;
struct ev2_dir_baton {int base_revision; TYPE_1__* eb; } ;
struct change_node {int copyfrom_rev; void* copyfrom_path; int kind; int action; } ;
typedef int apr_pool_t ;
struct TYPE_3__ {int fetch_base_baton; int (* fetch_base_func ) (int **,int ,void*,int ,int *,int *) ;int * edit_pool; } ;


 int RESTRUCTURE_ADD ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 struct ev2_file_baton* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 struct change_node* locate_change (TYPE_1__*,char const*) ;
 void* map_to_repos_relpath (TYPE_1__*,char const*,int *) ;
 int stub1 (int **,int ,void*,int ,int *,int *) ;
 int svn_node_file ;

__attribute__((used)) static svn_error_t *
ev2_add_file(const char *path,
             void *parent_baton,
             const char *copyfrom_path,
             svn_revnum_t copyfrom_revision,
             apr_pool_t *result_pool,
             void **file_baton)
{

  apr_pool_t *scratch_pool = result_pool;
  struct ev2_file_baton *fb = apr_pcalloc(result_pool, sizeof(*fb));
  struct ev2_dir_baton *pb = parent_baton;
  const char *relpath = map_to_repos_relpath(pb->eb, path, scratch_pool);
  struct change_node *change = locate_change(pb->eb, relpath);


  change->action = RESTRUCTURE_ADD;
  change->kind = svn_node_file;

  fb->eb = pb->eb;
  fb->path = apr_pstrdup(result_pool, relpath);
  fb->base_revision = pb->base_revision;
  *file_baton = fb;

  if (!copyfrom_path)
    {

      fb->delta_base = ((void*)0);
    }
  else
    {


      change->copyfrom_path = map_to_repos_relpath(fb->eb, copyfrom_path,
                                                   fb->eb->edit_pool);
      change->copyfrom_rev = copyfrom_revision;

      SVN_ERR(fb->eb->fetch_base_func(&fb->delta_base,
                                      fb->eb->fetch_base_baton,
                                      change->copyfrom_path,
                                      change->copyfrom_rev,
                                      result_pool, scratch_pool));
    }

  return SVN_NO_ERROR;
}
