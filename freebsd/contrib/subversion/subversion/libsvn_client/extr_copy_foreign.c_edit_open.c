
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct edit_baton_t {int anchor_abspath; int pool; } ;
struct dir_baton_t {int users; int local_abspath; struct edit_baton_t* eb; int * pool; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 struct dir_baton_t* apr_pcalloc (int *,int) ;
 int svn_io_make_dir_recursively (int ,int *) ;
 int * svn_pool_create (int ) ;

__attribute__((used)) static svn_error_t *
edit_open(void *edit_baton,
          svn_revnum_t base_revision,
          apr_pool_t *result_pool,
          void **root_baton)
{
  struct edit_baton_t *eb = edit_baton;
  apr_pool_t *dir_pool = svn_pool_create(eb->pool);
  struct dir_baton_t *db = apr_pcalloc(dir_pool, sizeof(*db));

  db->pool = dir_pool;
  db->eb = eb;
  db->users = 1;
  db->local_abspath = eb->anchor_abspath;

  SVN_ERR(svn_io_make_dir_recursively(eb->anchor_abspath, dir_pool));

  *root_baton = db;

  return SVN_NO_ERROR;
}
