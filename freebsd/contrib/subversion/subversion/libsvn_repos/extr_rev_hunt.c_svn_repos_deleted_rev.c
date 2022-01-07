
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_fs_t ;
typedef int svn_fs_root_t ;
typedef scalar_t__ svn_fs_node_relation_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NO_SUCH_REVISION ;
 scalar_t__ SVN_INVALID_REVNUM ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_createf (int ,int ,int ,scalar_t__) ;
 int svn_fs_check_path (scalar_t__*,int *,char const*,int *) ;
 int svn_fs_closest_copy (int **,char const**,int *,char const*,int *) ;
 int svn_fs_node_relation (scalar_t__*,int *,char const*,int *,char const*,int *) ;
 scalar_t__ svn_fs_node_unrelated ;
 int svn_fs_revision_root (int **,int *,scalar_t__,int *) ;
 scalar_t__ svn_fs_revision_root_revision (int *) ;
 scalar_t__ svn_node_none ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

svn_error_t *
svn_repos_deleted_rev(svn_fs_t *fs,
                      const char *path,
                      svn_revnum_t start,
                      svn_revnum_t end,
                      svn_revnum_t *deleted,
                      apr_pool_t *pool)
{
  apr_pool_t *iterpool;
  svn_fs_root_t *start_root, *root;
  svn_revnum_t mid_rev;
  svn_node_kind_t kind;
  svn_fs_node_relation_t node_relation;


  if (! SVN_IS_VALID_REVNUM(start))
    return svn_error_createf
      (SVN_ERR_FS_NO_SUCH_REVISION, 0,
       _("Invalid start revision %ld"), start);
  if (! SVN_IS_VALID_REVNUM(end))
    return svn_error_createf
      (SVN_ERR_FS_NO_SUCH_REVISION, 0,
       _("Invalid end revision %ld"), end);


  if (start > end)
    {
      svn_revnum_t tmprev = start;
      start = end;
      end = tmprev;
    }


  SVN_ERR(svn_fs_revision_root(&start_root, fs, start, pool));
  SVN_ERR(svn_fs_check_path(&kind, start_root, path, pool));
  if (kind == svn_node_none)
    {

      *deleted = SVN_INVALID_REVNUM;
      return SVN_NO_ERROR;
    }


  SVN_ERR(svn_fs_revision_root(&root, fs, end, pool));
  SVN_ERR(svn_fs_check_path(&kind, root, path, pool));
  if (kind != svn_node_none)
    {
      SVN_ERR(svn_fs_node_relation(&node_relation, start_root, path,
                                   root, path, pool));
      if (node_relation != svn_fs_node_unrelated)
        {
          svn_fs_root_t *copy_root;
          const char *copy_path;
          SVN_ERR(svn_fs_closest_copy(&copy_root, &copy_path, root,
                                      path, pool));
          if (!copy_root ||
              (svn_fs_revision_root_revision(copy_root) <= start))
            {

              *deleted = SVN_INVALID_REVNUM;
              return SVN_NO_ERROR;
            }
        }
    }
  mid_rev = (start + end) / 2;
  iterpool = svn_pool_create(pool);

  while (1)
    {
      svn_pool_clear(iterpool);


      SVN_ERR(svn_fs_revision_root(&root, fs, mid_rev, iterpool));
      SVN_ERR(svn_fs_check_path(&kind, root, path, iterpool));
      if (kind == svn_node_none)
        {

          end = mid_rev;
          mid_rev = (start + mid_rev) / 2;
        }
      else
        {
          svn_fs_root_t *copy_root;
          const char *copy_path;


          SVN_ERR(svn_fs_node_relation(&node_relation, start_root, path,
                                       root, path, iterpool));
          if (node_relation != svn_fs_node_unrelated)
            SVN_ERR(svn_fs_closest_copy(&copy_root, &copy_path, root,
                                        path, iterpool));
          if (node_relation == svn_fs_node_unrelated ||
              (copy_root &&
               (svn_fs_revision_root_revision(copy_root) > start)))
            {

              end = mid_rev;
              mid_rev = (start + mid_rev) / 2;
            }
          else if (end - mid_rev == 1)
            {

              *deleted = end;
              break;
            }
          else
            {

              start = mid_rev;
              mid_rev = (start + end) / 2;
            }
        }
    }

  svn_pool_destroy(iterpool);
  return SVN_NO_ERROR;
}
