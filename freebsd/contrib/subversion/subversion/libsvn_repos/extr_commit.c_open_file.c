
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct file_baton {char const* path; struct edit_baton* edit_baton; } ;
struct edit_baton {int txn_root; int base_path; } ;
struct dir_baton {struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 struct file_baton* apr_pcalloc (int *,int) ;
 int check_authz (struct edit_baton*,char const*,int ,int ,int *) ;
 int check_out_of_date (struct edit_baton*,char const*,int ,int ,int ) ;
 int svn_authz_read ;
 int svn_fs_node_created_rev (int *,int ,char const*,int *) ;
 char* svn_fspath__join (int ,int ,int *) ;
 int svn_node_file ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_relpath_canonicalize (char const*,int *) ;

__attribute__((used)) static svn_error_t *
open_file(const char *path,
          void *parent_baton,
          svn_revnum_t base_revision,
          apr_pool_t *pool,
          void **file_baton)
{
  struct file_baton *new_fb;
  struct dir_baton *pb = parent_baton;
  struct edit_baton *eb = pb->edit_baton;
  svn_revnum_t cr_rev;
  apr_pool_t *subpool = svn_pool_create(pool);
  const char *full_path;

  full_path = svn_fspath__join(eb->base_path,
                               svn_relpath_canonicalize(path, pool), pool);


  SVN_ERR(check_authz(eb, full_path, eb->txn_root,
                      svn_authz_read, subpool));


  SVN_ERR(svn_fs_node_created_rev(&cr_rev, eb->txn_root, full_path,
                                  subpool));



  if (SVN_IS_VALID_REVNUM(base_revision))
    SVN_ERR(check_out_of_date(eb, full_path, svn_node_file,
                              base_revision, cr_rev));


  new_fb = apr_pcalloc(pool, sizeof(*new_fb));
  new_fb->edit_baton = eb;
  new_fb->path = full_path;

  *file_baton = new_fb;


  svn_pool_destroy(subpool);

  return SVN_NO_ERROR;
}
