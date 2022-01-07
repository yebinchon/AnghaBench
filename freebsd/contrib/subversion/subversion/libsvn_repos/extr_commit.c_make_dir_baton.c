
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_boolean_t ;
struct edit_baton {int dummy; } ;
struct dir_baton {char const* path; int base_rev; int was_copied; int * pool; struct dir_baton* parent; struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;


 struct dir_baton* apr_pcalloc (int *,int) ;

__attribute__((used)) static struct dir_baton *
make_dir_baton(struct edit_baton *edit_baton,
               struct dir_baton *parent_baton,
               const char *full_path,
               svn_boolean_t was_copied,
               svn_revnum_t base_revision,
               apr_pool_t *pool)
{
  struct dir_baton *db;
  db = apr_pcalloc(pool, sizeof(*db));
  db->edit_baton = edit_baton;
  db->parent = parent_baton;
  db->pool = pool;
  db->path = full_path;
  db->was_copied = was_copied;
  db->base_rev = base_revision;
  return db;
}
