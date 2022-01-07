
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct file_baton {void* added; } ;
struct dir_baton {void* text_changed; } ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 void* TRUE ;
 struct file_baton* make_file_baton (struct dir_baton*,char const*,int *) ;

__attribute__((used)) static svn_error_t *
add_file(const char *path,
         void *parent_baton,
         const char *copyfrom_path,
         svn_revnum_t copyfrom_revision,
         apr_pool_t *pool,
         void **file_baton)
{
  struct dir_baton *pb = parent_baton;
  struct file_baton *new_fb = make_file_baton(pb, path, pool);


  pb->text_changed = TRUE;


  new_fb->added = TRUE;

  *file_baton = new_fb;
  return SVN_NO_ERROR;
}
