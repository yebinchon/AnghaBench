
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_t ;
struct TYPE_5__ {int file; } ;
typedef TYPE_1__ svn_fs_fs__revision_file_t ;
typedef int svn_error_t ;
typedef int apr_uint64_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int aligned_seek (int *,int ,int *,int,int *) ;
 int svn_fs_fs__ensure_revision_exists (int ,int *,int *) ;
 int svn_fs_fs__item_offset (int*,int *,TYPE_1__*,int ,int *,int ,int *) ;
 int svn_fs_fs__open_pack_or_rev_file (TYPE_1__**,int *,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
open_and_seek_revision(svn_fs_fs__revision_file_t **file,
                       svn_fs_t *fs,
                       svn_revnum_t rev,
                       apr_uint64_t item,
                       apr_pool_t *pool)
{
  svn_fs_fs__revision_file_t *rev_file;
  apr_off_t offset = -1;

  SVN_ERR(svn_fs_fs__ensure_revision_exists(rev, fs, pool));

  SVN_ERR(svn_fs_fs__open_pack_or_rev_file(&rev_file, fs, rev, pool, pool));
  SVN_ERR(svn_fs_fs__item_offset(&offset, fs, rev_file, rev, ((void*)0), item,
                                 pool));

  SVN_ERR(aligned_seek(fs, rev_file->file, ((void*)0), offset, pool));

  *file = rev_file;

  return SVN_NO_ERROR;
}
