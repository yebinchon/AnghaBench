
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct edit_baton {int dummy; } ;
struct dir_baton {void* text_changed; void* added; struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int make_dir_baton (void**,char const*,struct edit_baton*,struct dir_baton*,int *) ;

__attribute__((used)) static svn_error_t *
add_directory(const char *path,
              void *parent_baton,
              const char *copyfrom_path,
              svn_revnum_t copyfrom_revision,
              apr_pool_t *pool,
              void **child_baton)
{
  struct dir_baton *pb = parent_baton;
  struct edit_baton *eb = pb->edit_baton;
  struct dir_baton *new_db;

  SVN_ERR(make_dir_baton(child_baton, path, eb, pb, pool));


  new_db = *child_baton;
  new_db->added = TRUE;


  pb->text_changed = TRUE;

  return SVN_NO_ERROR;
}
