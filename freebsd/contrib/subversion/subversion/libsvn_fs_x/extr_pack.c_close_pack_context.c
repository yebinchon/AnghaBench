
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int shard_rev; int pack_file; int fs; int proto_p2l_index; int proto_l2p_index; } ;
typedef TYPE_1__ pack_context_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_x__add_index_data (int ,int ,char const*,char const*,int ,int *) ;
 int svn_io_file_close (int ,int *) ;
 int svn_io_file_name_get (char const**,int ,int *) ;
 int svn_io_remove_file2 (char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
close_pack_context(pack_context_t *context,
                   apr_pool_t *scratch_pool)
{
  const char *proto_l2p_index_path;
  const char *proto_p2l_index_path;


  SVN_ERR(svn_io_file_name_get(&proto_l2p_index_path,
                               context->proto_l2p_index, scratch_pool));
  SVN_ERR(svn_io_file_name_get(&proto_p2l_index_path,
                               context->proto_p2l_index, scratch_pool));


  SVN_ERR(svn_io_file_close(context->proto_l2p_index, scratch_pool));
  SVN_ERR(svn_io_file_close(context->proto_p2l_index, scratch_pool));


  SVN_ERR(svn_fs_x__add_index_data(context->fs, context->pack_file,
                                    proto_l2p_index_path,
                                    proto_p2l_index_path,
                                    context->shard_rev,
                                    scratch_pool));


  SVN_ERR(svn_io_remove_file2(proto_l2p_index_path, FALSE, scratch_pool));
  SVN_ERR(svn_io_remove_file2(proto_p2l_index_path, FALSE, scratch_pool));

  return SVN_NO_ERROR;
}
