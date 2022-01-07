
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_prop_t ;
typedef int svn_depth_t ;
typedef int svn_boolean_t ;
struct edit_baton_t {int anchor_abspath; int * pool; } ;
struct dir_baton_t {int users; int compared; int propchanges; int * pool; int depth; int added; struct edit_baton_t* eb; int relpath; int name; int local_abspath; struct dir_baton_t* parent_baton; } ;
typedef int apr_pool_t ;


 int apr_array_make (int *,int,int) ;
 int apr_hash_make (int *) ;
 struct dir_baton_t* apr_pcalloc (int *,int) ;
 int svn_dirent_basename (int ,int *) ;
 int svn_dirent_join (int ,char const*,int *) ;
 int svn_dirent_skip_ancestor (int ,int ) ;
 int * svn_pool_create (int *) ;

__attribute__((used)) static struct dir_baton_t *
make_dir_baton(const char *path,
               struct dir_baton_t *parent_baton,
               struct edit_baton_t *eb,
               svn_boolean_t added,
               svn_depth_t depth,
               apr_pool_t *result_pool)
{
  apr_pool_t *dir_pool = svn_pool_create(parent_baton ? parent_baton->pool
                                                      : eb->pool);
  struct dir_baton_t *db = apr_pcalloc(dir_pool, sizeof(*db));

  db->parent_baton = parent_baton;


  db->local_abspath = svn_dirent_join(eb->anchor_abspath, path, dir_pool);
  db->relpath = svn_dirent_skip_ancestor(eb->anchor_abspath, db->local_abspath);
  db->name = svn_dirent_basename(db->relpath, ((void*)0));

  db->eb = eb;
  db->added = added;
  db->depth = depth;
  db->pool = dir_pool;
  db->propchanges = apr_array_make(dir_pool, 8, sizeof(svn_prop_t));
  db->compared = apr_hash_make(dir_pool);

  if (parent_baton != ((void*)0))
    {
      parent_baton->users++;
    }

  db->users = 1;

  return db;
}
