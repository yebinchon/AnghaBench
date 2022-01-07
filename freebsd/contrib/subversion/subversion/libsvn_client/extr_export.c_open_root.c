
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct edit_baton {int root_path; int notify_baton; int notify_func; int force; } ;
struct dir_baton {struct edit_baton* edit_baton; int path; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 struct dir_baton* apr_pcalloc (int *,int) ;
 int open_root_internal (int ,int ,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
open_root(void *edit_baton,
          svn_revnum_t base_revision,
          apr_pool_t *pool,
          void **root_baton)
{
  struct edit_baton *eb = edit_baton;
  struct dir_baton *db = apr_pcalloc(pool, sizeof(*db));

  SVN_ERR(open_root_internal(eb->root_path, eb->force,
                             eb->notify_func, eb->notify_baton, pool));


  db->path = eb->root_path;
  db->edit_baton = eb;
  *root_baton = db;

  return SVN_NO_ERROR;
}
