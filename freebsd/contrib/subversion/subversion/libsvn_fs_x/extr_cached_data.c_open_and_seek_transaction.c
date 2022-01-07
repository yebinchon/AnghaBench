
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_fs_x__revision_file_t ;
struct TYPE_5__ {int change_set; } ;
struct TYPE_4__ {TYPE_2__ id; } ;
typedef TYPE_1__ svn_fs_x__representation_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
typedef int apr_int64_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_x__get_txn_id (int ) ;
 int svn_fs_x__item_offset (int *,int *,int *,int *,TYPE_2__*,int *) ;
 int svn_fs_x__rev_file_open_proto_rev (int **,int *,int ,int *,int *) ;
 int svn_fs_x__rev_file_seek (int *,int *,int ) ;

__attribute__((used)) static svn_error_t *
open_and_seek_transaction(svn_fs_x__revision_file_t **file,
                          svn_fs_t *fs,
                          svn_fs_x__representation_t *rep,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  apr_off_t offset;
  apr_uint32_t sub_item = 0;
  apr_int64_t txn_id = svn_fs_x__get_txn_id(rep->id.change_set);

  SVN_ERR(svn_fs_x__rev_file_open_proto_rev(file, fs, txn_id, result_pool,
                                            scratch_pool));

  SVN_ERR(svn_fs_x__item_offset(&offset, &sub_item, fs, *file, &rep->id,
                                scratch_pool));
  SVN_ERR(svn_fs_x__rev_file_seek(*file, ((void*)0), offset));

  return SVN_NO_ERROR;
}
