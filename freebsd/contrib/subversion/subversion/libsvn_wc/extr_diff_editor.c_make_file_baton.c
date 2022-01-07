
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_prop_t ;
typedef int svn_boolean_t ;
struct file_baton_t {int propchanges; int * pool; int added; int relpath; int name; int local_abspath; struct dir_baton_t* parent_baton; struct edit_baton_t* eb; } ;
struct edit_baton_t {int anchor_abspath; } ;
struct dir_baton_t {int users; struct edit_baton_t* eb; } ;
typedef int apr_pool_t ;


 int apr_array_make (int *,int,int) ;
 struct file_baton_t* apr_pcalloc (int *,int) ;
 int svn_dirent_basename (int ,int *) ;
 int svn_dirent_join (int ,char const*,int *) ;
 int svn_dirent_skip_ancestor (int ,int ) ;
 int * svn_pool_create (int *) ;

__attribute__((used)) static struct file_baton_t *
make_file_baton(const char *path,
                svn_boolean_t added,
                struct dir_baton_t *parent_baton,
                apr_pool_t *result_pool)
{
  apr_pool_t *file_pool = svn_pool_create(result_pool);
  struct file_baton_t *fb = apr_pcalloc(file_pool, sizeof(*fb));
  struct edit_baton_t *eb = parent_baton->eb;

  fb->eb = eb;
  fb->parent_baton = parent_baton;
  fb->parent_baton->users++;


  fb->local_abspath = svn_dirent_join(eb->anchor_abspath, path, file_pool);
  fb->relpath = svn_dirent_skip_ancestor(eb->anchor_abspath, fb->local_abspath);
  fb->name = svn_dirent_basename(fb->relpath, ((void*)0));

  fb->added = added;
  fb->pool = file_pool;
  fb->propchanges = apr_array_make(file_pool, 8, sizeof(svn_prop_t));

  return fb;
}
