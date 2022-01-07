
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_revnum_t ;
typedef int svn_repos_notify_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
struct revision_baton {int txn_root; int rev; scalar_t__ rev_offset; struct parse_baton* pb; } ;
struct parse_baton {int notify_pool; int notify_baton; int (* notify_func ) (int ,int *,int ) ;int fs; int rev_map; int use_history; } ;
struct node_baton {scalar_t__ kind; int path; int * copyfrom_path; scalar_t__ copy_source_checksum; scalar_t__ copyfrom_rev; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NO_SUCH_REVISION ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ get_revision_mapping (int ,scalar_t__) ;
 int stub1 (int ,int *,int ) ;
 int svn_checksum_match (scalar_t__,int *) ;
 int svn_checksum_md5 ;
 int * svn_checksum_mismatch_err (scalar_t__,int *,int *,int ,int *,scalar_t__,int ,int ) ;
 int * svn_error_createf (int ,int *,int ,scalar_t__) ;
 int svn_fs_copy (int *,int *,int ,int ,int *) ;
 int svn_fs_file_checksum (int **,int ,int *,int *,int ,int *) ;
 int svn_fs_make_dir (int ,int ,int *) ;
 int svn_fs_make_file (int ,int ,int *) ;
 int svn_fs_revision_root (int **,int ,scalar_t__,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 int svn_pool_clear (int ) ;
 int * svn_repos_notify_create (int ,int ) ;
 int svn_repos_notify_load_copied_node ;

__attribute__((used)) static svn_error_t *
maybe_add_with_history(struct node_baton *nb,
                       struct revision_baton *rb,
                       apr_pool_t *pool)
{
  struct parse_baton *pb = rb->pb;

  if ((nb->copyfrom_path == ((void*)0)) || (! pb->use_history))
    {

      if (nb->kind == svn_node_file)
        SVN_ERR(svn_fs_make_file(rb->txn_root, nb->path, pool));

      else if (nb->kind == svn_node_dir)
        SVN_ERR(svn_fs_make_dir(rb->txn_root, nb->path, pool));
    }
  else
    {

      svn_fs_root_t *copy_root;
      svn_revnum_t copyfrom_rev;



      copyfrom_rev = get_revision_mapping(rb->pb->rev_map, nb->copyfrom_rev);
      if (! SVN_IS_VALID_REVNUM(copyfrom_rev))
        copyfrom_rev = nb->copyfrom_rev - rb->rev_offset;

      if (! SVN_IS_VALID_REVNUM(copyfrom_rev))
        return svn_error_createf(SVN_ERR_FS_NO_SUCH_REVISION, ((void*)0),
                                 _("Relative source revision %ld is not"
                                   " available in current repository"),
                                 copyfrom_rev);

      SVN_ERR(svn_fs_revision_root(&copy_root, pb->fs, copyfrom_rev, pool));

      if (nb->copy_source_checksum)
        {
          svn_checksum_t *checksum;
          SVN_ERR(svn_fs_file_checksum(&checksum, svn_checksum_md5, copy_root,
                                       nb->copyfrom_path, TRUE, pool));
          if (!svn_checksum_match(nb->copy_source_checksum, checksum))
            return svn_checksum_mismatch_err(nb->copy_source_checksum,
                      checksum, pool,
                      _("Copy source checksum mismatch on copy from '%s'@%ld\n"
                        "to '%s' in rev based on r%ld"),
                      nb->copyfrom_path, copyfrom_rev, nb->path, rb->rev);
        }

      SVN_ERR(svn_fs_copy(copy_root, nb->copyfrom_path,
                          rb->txn_root, nb->path, pool));

      if (pb->notify_func)
        {

          svn_repos_notify_t *notify = svn_repos_notify_create(
                                            svn_repos_notify_load_copied_node,
                                            pb->notify_pool);

          pb->notify_func(pb->notify_baton, notify, pb->notify_pool);
          svn_pool_clear(pb->notify_pool);
        }
    }

  return SVN_NO_ERROR;
}
