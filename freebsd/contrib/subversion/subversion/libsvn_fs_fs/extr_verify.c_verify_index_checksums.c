
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_t ;
struct TYPE_5__ {int p2l_checksum; int footer_offset; int p2l_offset; int file; int l2p_checksum; int l2p_offset; } ;
typedef TYPE_1__ svn_fs_fs__revision_file_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_fs__auto_read_footer (TYPE_1__*) ;
 int svn_fs_fs__close_revision_file (TYPE_1__*) ;
 int svn_fs_fs__open_pack_or_rev_file (TYPE_1__**,int *,int ,int *,int *) ;
 int verify_index_checksum (int ,char*,int ,int ,int ,int ,void*,int *) ;

__attribute__((used)) static svn_error_t *
verify_index_checksums(svn_fs_t *fs,
                       svn_revnum_t start,
                       svn_cancel_func_t cancel_func,
                       void *cancel_baton,
                       apr_pool_t *scratch_pool)
{
  svn_fs_fs__revision_file_t *rev_file;


  SVN_ERR(svn_fs_fs__open_pack_or_rev_file(&rev_file, fs, start,
                                           scratch_pool, scratch_pool));
  SVN_ERR(svn_fs_fs__auto_read_footer(rev_file));


  SVN_ERR(verify_index_checksum(rev_file->file, "L2P index",
                                rev_file->l2p_offset, rev_file->p2l_offset,
                                rev_file->l2p_checksum,
                                cancel_func, cancel_baton, scratch_pool));
  SVN_ERR(verify_index_checksum(rev_file->file, "P2L index",
                                rev_file->p2l_offset, rev_file->footer_offset,
                                rev_file->p2l_checksum,
                                cancel_func, cancel_baton, scratch_pool));


  SVN_ERR(svn_fs_fs__close_revision_file(rev_file));

  return SVN_NO_ERROR;
}
