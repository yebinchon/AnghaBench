
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ l2p_proto_entry_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int * svn_error_trace (int ) ;
 int write_l2p_entry_to_proto_index (int *,TYPE_1__,int *) ;

svn_error_t *
svn_fs_x__l2p_proto_index_add_revision(apr_file_t *proto_index,
                                       apr_pool_t *scratch_pool)
{
  l2p_proto_entry_t entry = { 0 };
  return svn_error_trace(write_l2p_entry_to_proto_index(proto_index, entry,
                                                        scratch_pool));
}
