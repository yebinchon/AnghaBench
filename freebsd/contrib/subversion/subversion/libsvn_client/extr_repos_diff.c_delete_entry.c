
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
struct edit_baton {int revision; int ra_session; int pool; } ;
struct dir_baton {scalar_t__ skip_children; struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int diff_deleted_dir (char const*,struct dir_baton*,int *) ;
 int diff_deleted_file (char const*,struct dir_baton*,int *) ;


 int * svn_pool_create (int ) ;
 int svn_pool_destroy (int *) ;
 int svn_ra_check_path (int ,char const*,int ,int*,int *) ;

__attribute__((used)) static svn_error_t *
delete_entry(const char *path,
             svn_revnum_t base_revision,
             void *parent_baton,
             apr_pool_t *pool)
{
  struct dir_baton *pb = parent_baton;
  struct edit_baton *eb = pb->edit_baton;
  svn_node_kind_t kind;
  apr_pool_t *scratch_pool;


  if (pb->skip_children)
    return SVN_NO_ERROR;

  scratch_pool = svn_pool_create(eb->pool);


  SVN_ERR(svn_ra_check_path(eb->ra_session, path, eb->revision, &kind,
                            scratch_pool));

  switch (kind)
    {
    case 128:
      {
        SVN_ERR(diff_deleted_file(path, pb, scratch_pool));
        break;
      }
    case 129:
      {
        SVN_ERR(diff_deleted_dir(path, pb, scratch_pool));
        break;
      }
    default:
      break;
    }

  svn_pool_destroy(scratch_pool);

  return SVN_NO_ERROR;
}
