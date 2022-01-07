
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct file_baton_t {int * pool; int local_abspath; struct dir_baton_t* pb; struct edit_baton_t* eb; } ;
struct edit_baton_t {int anchor_abspath; } ;
struct dir_baton_t {int users; int pool; struct edit_baton_t* eb; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_WC_OBSTRUCTED_UPDATE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 struct file_baton_t* apr_pcalloc (int *,int) ;
 int svn_dirent_is_under_root (int *,int *,int ,char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int * svn_pool_create (int ) ;

__attribute__((used)) static svn_error_t *
file_add(const char *path,
         void *parent_baton,
         const char *copyfrom_path,
         svn_revnum_t copyfrom_revision,
         apr_pool_t *result_pool,
         void **file_baton)
{
  struct dir_baton_t *pb = parent_baton;
  struct edit_baton_t *eb = pb->eb;
  apr_pool_t *file_pool = svn_pool_create(pb->pool);
  struct file_baton_t *fb = apr_pcalloc(file_pool, sizeof(*fb));
  svn_boolean_t under_root;

  pb->users++;

  fb->pool = file_pool;
  fb->eb = eb;
  fb->pb = pb;

  SVN_ERR(svn_dirent_is_under_root(&under_root, &fb->local_abspath,
                                   eb->anchor_abspath, path, fb->pool));
  if (! under_root)
    {
      return svn_error_createf(
                    SVN_ERR_WC_OBSTRUCTED_UPDATE, ((void*)0),
                    _("Path '%s' is not in the working copy"),
                    svn_dirent_local_style(path, fb->pool));
    }

  *file_baton = fb;
  return SVN_NO_ERROR;
}
