
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_prop_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct file_baton {int shadowed; void* changed_rev; struct dir_baton* dir_baton; int skip_this; void* add_existed; void* obstruction_found; int adding_file; int bump_info; int propchanges; int edit_baton; int * pool; int name; int local_abspath; void* old_revision; } ;
struct dir_baton {int ref_count; scalar_t__ edit_obstructed; scalar_t__ shadowed; int skip_this; int bump_info; int edit_baton; int local_abspath; int pool; } ;
typedef int apr_pool_t ;


 void* FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (char const*) ;
 void* SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int apr_array_make (int *,int,int) ;
 struct file_baton* apr_pcalloc (int *,int) ;
 int path_join_under_root (int *,int ,int ,int *) ;
 int svn_dirent_basename (char const*,int *) ;
 int * svn_pool_create (int ) ;

__attribute__((used)) static svn_error_t *
make_file_baton(struct file_baton **f_p,
                struct dir_baton *pb,
                const char *path,
                svn_boolean_t adding,
                apr_pool_t *scratch_pool)
{
  apr_pool_t *file_pool = svn_pool_create(pb->pool);
  struct file_baton *f = apr_pcalloc(file_pool, sizeof(*f));

  SVN_ERR_ASSERT(path);


  f->name = svn_dirent_basename(path, file_pool);
  f->old_revision = SVN_INVALID_REVNUM;
  SVN_ERR(path_join_under_root(&f->local_abspath,
                               pb->local_abspath, f->name, file_pool));

  f->pool = file_pool;
  f->edit_baton = pb->edit_baton;
  f->propchanges = apr_array_make(file_pool, 1, sizeof(svn_prop_t));
  f->bump_info = pb->bump_info;
  f->adding_file = adding;
  f->obstruction_found = FALSE;
  f->add_existed = FALSE;
  f->skip_this = pb->skip_this;
  f->shadowed = pb->shadowed || pb->edit_obstructed;
  f->dir_baton = pb;
  f->changed_rev = SVN_INVALID_REVNUM;


  pb->ref_count++;

  *f_p = f;
  return SVN_NO_ERROR;
}
