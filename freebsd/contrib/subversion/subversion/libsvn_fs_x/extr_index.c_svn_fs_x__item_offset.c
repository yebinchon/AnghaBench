
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_x__revision_file_t ;
struct TYPE_3__ {int number; int change_set; } ;
typedef TYPE_1__ svn_fs_x__id_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int l2p_index_lookup (int *,int *,int *,int *,int ,int ,int *) ;
 int l2p_proto_index_lookup (int *,int *,int *,int ,int ,int *) ;
 int svn_fs_x__get_revnum (int ) ;
 int svn_fs_x__get_txn_id (int ) ;
 scalar_t__ svn_fs_x__is_txn (int ) ;

svn_error_t *
svn_fs_x__item_offset(apr_off_t *absolute_position,
                      apr_uint32_t *sub_item,
                      svn_fs_t *fs,
                      svn_fs_x__revision_file_t *rev_file,
                      const svn_fs_x__id_t *item_id,
                      apr_pool_t *scratch_pool)
{
  if (svn_fs_x__is_txn(item_id->change_set))
    SVN_ERR(l2p_proto_index_lookup(absolute_position, sub_item, fs,
                                   svn_fs_x__get_txn_id(item_id->change_set),
                                   item_id->number, scratch_pool));
  else
    SVN_ERR(l2p_index_lookup(absolute_position, sub_item, fs, rev_file,
                             svn_fs_x__get_revnum(item_id->change_set),
                             item_id->number, scratch_pool));

  return SVN_NO_ERROR;
}
