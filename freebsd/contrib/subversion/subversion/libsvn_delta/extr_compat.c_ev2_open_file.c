
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct ev2_file_baton {TYPE_1__* eb; int delta_base; int base_revision; int path; } ;
struct ev2_dir_baton {int copyfrom_rev; int copyfrom_relpath; TYPE_1__* eb; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int fetch_base_baton; int (* fetch_base_func ) (int *,int ,char const*,int ,int *,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 struct ev2_file_baton* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 char* map_to_repos_relpath (TYPE_1__*,char const*,int *) ;
 int stub1 (int *,int ,char const*,int ,int *,int *) ;
 int stub2 (int *,int ,char const*,int ,int *,int *) ;
 char* svn_relpath_basename (char const*,int *) ;
 char* svn_relpath_join (int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *
ev2_open_file(const char *path,
              void *parent_baton,
              svn_revnum_t base_revision,
              apr_pool_t *result_pool,
              void **file_baton)
{

  apr_pool_t *scratch_pool = result_pool;
  struct ev2_file_baton *fb = apr_pcalloc(result_pool, sizeof(*fb));
  struct ev2_dir_baton *pb = parent_baton;
  const char *relpath = map_to_repos_relpath(pb->eb, path, scratch_pool);

  fb->eb = pb->eb;
  fb->path = apr_pstrdup(result_pool, relpath);
  fb->base_revision = base_revision;

  if (pb->copyfrom_relpath)
    {


      const char *name = svn_relpath_basename(relpath, scratch_pool);
      const char *copyfrom_relpath = svn_relpath_join(pb->copyfrom_relpath,
                                                      name,
                                                      scratch_pool);

      SVN_ERR(fb->eb->fetch_base_func(&fb->delta_base,
                                      fb->eb->fetch_base_baton,
                                      copyfrom_relpath, pb->copyfrom_rev,
                                      result_pool, scratch_pool));
    }
  else
    {
      SVN_ERR(fb->eb->fetch_base_func(&fb->delta_base,
                                      fb->eb->fetch_base_baton,
                                      relpath, base_revision,
                                      result_pool, scratch_pool));
    }

  *file_baton = fb;
  return SVN_NO_ERROR;
}
