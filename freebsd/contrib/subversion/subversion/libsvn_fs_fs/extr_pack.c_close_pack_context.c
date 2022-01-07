
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int pack_file; scalar_t__ flush_to_disk; int shard_rev; int fs; int proto_p2l_index; int proto_l2p_index; } ;
typedef TYPE_1__ pack_context_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_fs__add_index_data (int ,int ,char const*,char const*,int ,int *) ;
 int svn_io_file_close (int ,int *) ;
 int svn_io_file_flush_to_disk (int ,int *) ;
 int svn_io_file_name_get (char const**,int ,int *) ;
 int svn_io_remove_file2 (char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
close_pack_context(pack_context_t *context,
                   apr_pool_t *pool)
{
  const char *proto_l2p_index_path;
  const char *proto_p2l_index_path;


  SVN_ERR(svn_io_file_name_get(&proto_l2p_index_path,
                               context->proto_l2p_index, pool));
  SVN_ERR(svn_io_file_name_get(&proto_p2l_index_path,
                               context->proto_p2l_index, pool));


  SVN_ERR(svn_io_file_close(context->proto_l2p_index, pool));
  SVN_ERR(svn_io_file_close(context->proto_p2l_index, pool));


  SVN_ERR(svn_fs_fs__add_index_data(context->fs, context->pack_file,
                                    proto_l2p_index_path,
                                    proto_p2l_index_path,
                                    context->shard_rev,
                                    pool));


  SVN_ERR(svn_io_remove_file2(proto_l2p_index_path, FALSE, pool));
  SVN_ERR(svn_io_remove_file2(proto_p2l_index_path, FALSE, pool));


  if (context->flush_to_disk)
    SVN_ERR(svn_io_file_flush_to_disk(context->pack_file, pool));
  SVN_ERR(svn_io_file_close(context->pack_file, pool));

  return SVN_NO_ERROR;
}
