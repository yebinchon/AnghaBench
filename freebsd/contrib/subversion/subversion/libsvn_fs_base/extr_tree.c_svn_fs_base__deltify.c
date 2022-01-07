
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_8__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
struct rev_get_txn_id_args {char const** txn_id; scalar_t__ revision; } ;
struct TYPE_9__ {scalar_t__ format; } ;
typedef TYPE_2__ base_fs_data_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 scalar_t__ SVN_FS_BASE__MIN_MISCELLANY_FORMAT ;
 int SVN_FS_BASE__MISC_FORWARD_DELTA_UPGRADE ;
 int _ (char*) ;
 int * deltify_mutable (TYPE_1__*,int *,char*,int *,int ,char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,scalar_t__) ;
 int svn_fs_base__miscellaneous_get (char const**,TYPE_1__*,int ,int *) ;
 int svn_fs_base__retry_txn (TYPE_1__*,int ,struct rev_get_txn_id_args*,int ,int *) ;
 int svn_fs_base__revision_root (int **,TYPE_1__*,scalar_t__,int *) ;
 int svn_node_dir ;
 int svn_revnum_parse (scalar_t__*,char const*,int *) ;
 int txn_body_rev_get_txn_id ;

svn_error_t *
svn_fs_base__deltify(svn_fs_t *fs,
                     svn_revnum_t revision,
                     apr_pool_t *pool)
{
  svn_fs_root_t *root;
  const char *txn_id;
  struct rev_get_txn_id_args args;
  base_fs_data_t *bfd = fs->fsap_data;

  if (bfd->format >= SVN_FS_BASE__MIN_MISCELLANY_FORMAT)
    {
      const char *val;
      svn_revnum_t forward_delta_rev = 0;

      SVN_ERR(svn_fs_base__miscellaneous_get
              (&val, fs, SVN_FS_BASE__MISC_FORWARD_DELTA_UPGRADE, pool));
      if (val)
        SVN_ERR(svn_revnum_parse(&forward_delta_rev, val, ((void*)0)));


      if (revision <= forward_delta_rev)
        return svn_error_createf
          (SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
           _("Cannot deltify revisions prior to r%ld"), forward_delta_rev+1);
    }

  SVN_ERR(svn_fs_base__revision_root(&root, fs, revision, pool));

  args.txn_id = &txn_id;
  args.revision = revision;
  SVN_ERR(svn_fs_base__retry_txn(fs, txn_body_rev_get_txn_id, &args,
                                 FALSE, pool));

  return deltify_mutable(fs, root, "/", ((void*)0), svn_node_dir, txn_id, pool);
}
