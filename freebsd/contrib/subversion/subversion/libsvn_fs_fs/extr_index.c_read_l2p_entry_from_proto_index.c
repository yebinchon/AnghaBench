
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_3__ {int item_index; int offset; } ;
typedef TYPE_1__ l2p_proto_entry_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int read_uint64_from_proto_index (int *,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
read_l2p_entry_from_proto_index(apr_file_t *proto_index,
                                l2p_proto_entry_t *entry,
                                svn_boolean_t *eof,
                                apr_pool_t *scratch_pool)
{
  SVN_ERR(read_uint64_from_proto_index(proto_index, &entry->offset, eof,
                                       scratch_pool));
  SVN_ERR(read_uint64_from_proto_index(proto_index, &entry->item_index, eof,
                                       scratch_pool));

  return SVN_NO_ERROR;
}
