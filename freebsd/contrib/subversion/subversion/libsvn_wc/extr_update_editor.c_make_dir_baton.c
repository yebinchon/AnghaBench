
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_prop_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct edit_baton {int anchor_abspath; int * pool; } ;
struct dir_baton {int ref_count; int shadowed; void* was_incomplete; int ambient_depth; scalar_t__ edit_obstructed; int skip_this; int not_present_nodes; void* changed_rev; int adding_dir; void* old_revision; void* add_existed; void* obstruction_found; int propchanges; int * pool; struct dir_baton* parent_baton; struct edit_baton* edit_baton; int local_abspath; int * name; } ;
typedef int apr_pool_t ;


 void* FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 void* SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int apr_array_make (int *,int,int) ;
 int apr_hash_make (int *) ;
 struct dir_baton* apr_pcalloc (int *,int) ;
 int path_join_under_root (int *,int ,int *,int *) ;
 int svn_depth_unknown ;
 int * svn_dirent_basename (char const*,int *) ;
 int * svn_pool_create (int *) ;

__attribute__((used)) static svn_error_t *
make_dir_baton(struct dir_baton **d_p,
               const char *path,
               struct edit_baton *eb,
               struct dir_baton *pb,
               svn_boolean_t adding,
               apr_pool_t *scratch_pool)
{
  apr_pool_t *dir_pool;
  struct dir_baton *d;

  if (pb != ((void*)0))
    dir_pool = svn_pool_create(pb->pool);
  else
    dir_pool = svn_pool_create(eb->pool);

  SVN_ERR_ASSERT(path || (! pb));


  d = apr_pcalloc(dir_pool, sizeof(*d));


  if (path)
    {
      d->name = svn_dirent_basename(path, dir_pool);
      SVN_ERR(path_join_under_root(&d->local_abspath,
                                   pb->local_abspath, d->name, dir_pool));
    }
  else
    {

      d->name = ((void*)0);
      d->local_abspath = eb->anchor_abspath;
    }

  d->edit_baton = eb;
  d->parent_baton = pb;
  d->pool = dir_pool;
  d->propchanges = apr_array_make(dir_pool, 1, sizeof(svn_prop_t));
  d->obstruction_found = FALSE;
  d->add_existed = FALSE;
  d->ref_count = 1;
  d->old_revision = SVN_INVALID_REVNUM;
  d->adding_dir = adding;
  d->changed_rev = SVN_INVALID_REVNUM;
  d->not_present_nodes = apr_hash_make(dir_pool);


  if (pb)
    {
      d->skip_this = pb->skip_this;
      d->shadowed = pb->shadowed || pb->edit_obstructed;


      pb->ref_count++;
    }


  d->ambient_depth = svn_depth_unknown;
  d->was_incomplete = FALSE;

  *d_p = d;
  return SVN_NO_ERROR;
}
