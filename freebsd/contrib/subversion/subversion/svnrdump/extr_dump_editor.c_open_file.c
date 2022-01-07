
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct file_baton {int copyfrom_rev; int copyfrom_path; } ;
struct dir_baton {int copyfrom_rev; int pool; int copyfrom_path; int eb; } ;
typedef int apr_pool_t ;


 scalar_t__ ARE_VALID_COPY_ARGS (int ,int ) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int dump_pending_dir (int ,int *) ;
 struct file_baton* make_file_baton (char const*,struct dir_baton*,int *) ;
 int svn_relpath_basename (char const*,int *) ;
 int svn_relpath_join (int ,int ,int ) ;

__attribute__((used)) static svn_error_t *
open_file(const char *path,
          void *parent_baton,
          svn_revnum_t ancestor_revision,
          apr_pool_t *pool,
          void **file_baton)
{
  struct dir_baton *pb = parent_baton;
  struct file_baton *fb;

  SVN_ERR(dump_pending_dir(pb->eb, pool));


  fb = make_file_baton(path, pb, pool);



  if (ARE_VALID_COPY_ARGS(pb->copyfrom_path, pb->copyfrom_rev))
    {
      fb->copyfrom_path = svn_relpath_join(pb->copyfrom_path,
                                           svn_relpath_basename(path, ((void*)0)),
                                           pb->pool);
      fb->copyfrom_rev = pb->copyfrom_rev;
    }

  *file_baton = fb;
  return SVN_NO_ERROR;
}
