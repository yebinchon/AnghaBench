
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_3__ {scalar_t__ item_index; scalar_t__ offset; } ;
typedef TYPE_1__ l2p_proto_entry_t ;
typedef scalar_t__ apr_uint64_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
typedef int apr_file_t ;


 int APR_BUFFERED ;
 int APR_OS_DEFAULT ;
 int APR_READ ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int read_l2p_entry_from_proto_index (int *,TYPE_1__*,int *,int *) ;
 int svn_fs_fs__path_l2p_proto_index (int *,int const*,int *) ;
 int svn_io_file_close (int *,int *) ;
 int svn_io_file_open (int **,int ,int,int ,int *) ;

__attribute__((used)) static svn_error_t *
l2p_proto_index_lookup(apr_off_t *offset,
                       svn_fs_t *fs,
                       const svn_fs_fs__id_part_t *txn_id,
                       apr_uint64_t item_index,
                       apr_pool_t *scratch_pool)
{
  svn_boolean_t eof = FALSE;
  apr_file_t *file = ((void*)0);
  SVN_ERR(svn_io_file_open(&file,
                           svn_fs_fs__path_l2p_proto_index(fs, txn_id,
                                                           scratch_pool),
                           APR_READ | APR_BUFFERED, APR_OS_DEFAULT,
                           scratch_pool));


  *offset = -1;
  while (!eof)
    {
      l2p_proto_entry_t entry;


      SVN_ERR(read_l2p_entry_from_proto_index(file, &entry, &eof,
                                              scratch_pool));


      if (!eof && entry.item_index == item_index)
        {
          *offset = (apr_off_t)entry.offset - 1;
          break;
        }
    }

  SVN_ERR(svn_io_file_close(file, scratch_pool));

  return SVN_NO_ERROR;
}
