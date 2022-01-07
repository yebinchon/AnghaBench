
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_x__revision_file_t ;
struct TYPE_4__ {int change_set; } ;
typedef TYPE_1__ svn_fs_x__id_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_x__ensure_revision_exists (int ,int *,int *) ;
 int svn_fs_x__get_revnum (int ) ;
 int svn_fs_x__item_offset (int*,int *,int *,int *,TYPE_1__ const*,int *) ;
 int svn_fs_x__rev_file_init (int **,int *,int ,int *) ;
 int svn_fs_x__rev_file_seek (int *,int *,int) ;

__attribute__((used)) static svn_error_t *
open_and_seek_revision(svn_fs_x__revision_file_t **file,
                       svn_fs_t *fs,
                       const svn_fs_x__id_t *id,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  svn_fs_x__revision_file_t *rev_file;
  apr_off_t offset = -1;
  apr_uint32_t sub_item = 0;
  svn_revnum_t rev = svn_fs_x__get_revnum(id->change_set);

  SVN_ERR(svn_fs_x__ensure_revision_exists(rev, fs, scratch_pool));

  SVN_ERR(svn_fs_x__rev_file_init(&rev_file, fs, rev, result_pool));
  SVN_ERR(svn_fs_x__item_offset(&offset, &sub_item, fs, rev_file, id,
                                scratch_pool));
  SVN_ERR(svn_fs_x__rev_file_seek(rev_file, ((void*)0), offset));

  *file = rev_file;

  return SVN_NO_ERROR;
}
