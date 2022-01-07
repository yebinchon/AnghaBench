
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_t ;
struct TYPE_4__ {scalar_t__ is_packed; } ;
typedef TYPE_1__ svn_fs_fs__revision_file_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_uint64_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int l2p_index_lookup (scalar_t__*,int *,TYPE_1__*,int ,scalar_t__,int *) ;
 int l2p_proto_index_lookup (scalar_t__*,int *,int const*,scalar_t__,int *) ;
 int * svn_error_trace (int *) ;
 int svn_fs_fs__get_packed_offset (scalar_t__*,int *,int ,int *) ;
 scalar_t__ svn_fs_fs__use_log_addressing (int *) ;

svn_error_t *
svn_fs_fs__item_offset(apr_off_t *absolute_position,
                       svn_fs_t *fs,
                       svn_fs_fs__revision_file_t *rev_file,
                       svn_revnum_t revision,
                       const svn_fs_fs__id_part_t *txn_id,
                       apr_uint64_t item_index,
                       apr_pool_t *scratch_pool)
{
  svn_error_t *err = SVN_NO_ERROR;
  if (txn_id)
    {
      if (svn_fs_fs__use_log_addressing(fs))
        {


          SVN_ERR(l2p_proto_index_lookup(absolute_position, fs, txn_id,
                                         item_index, scratch_pool));
        }
      else
        {

          *absolute_position = item_index;
        }
    }
  else if (svn_fs_fs__use_log_addressing(fs))
    {

      SVN_ERR(l2p_index_lookup(absolute_position, fs, rev_file, revision,
                               item_index, scratch_pool));
    }
  else if (rev_file->is_packed)
    {

      apr_off_t rev_offset;
      SVN_ERR(svn_fs_fs__get_packed_offset(&rev_offset, fs, revision,
                                           scratch_pool));
      *absolute_position = rev_offset + item_index;
    }
  else
    {


      *absolute_position = item_index;
    }

  return svn_error_trace(err);
}
