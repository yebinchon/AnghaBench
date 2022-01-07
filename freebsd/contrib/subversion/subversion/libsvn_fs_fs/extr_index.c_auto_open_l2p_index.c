
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_7__ {TYPE_3__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
struct TYPE_8__ {int pool; int p2l_offset; int l2p_offset; int file; int * l2p_stream; } ;
typedef TYPE_2__ svn_fs_fs__revision_file_t ;
typedef int svn_error_t ;
struct TYPE_9__ {scalar_t__ block_size; } ;
typedef TYPE_3__ fs_fs_data_t ;
typedef int apr_size_t ;


 int L2P_STREAM_PREFIX ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int packed_stream_open (int **,int ,int ,int ,int ,int ,int ,int ) ;
 int svn_fs_fs__auto_read_footer (TYPE_2__*) ;

__attribute__((used)) static svn_error_t *
auto_open_l2p_index(svn_fs_fs__revision_file_t *rev_file,
                    svn_fs_t *fs,
                    svn_revnum_t revision)
{
  if (rev_file->l2p_stream == ((void*)0))
    {
      fs_fs_data_t *ffd = fs->fsap_data;

      SVN_ERR(svn_fs_fs__auto_read_footer(rev_file));
      SVN_ERR(packed_stream_open(&rev_file->l2p_stream,
                                 rev_file->file,
                                 rev_file->l2p_offset,
                                 rev_file->p2l_offset,
                                 L2P_STREAM_PREFIX,
                                 (apr_size_t)ffd->block_size,
                                 rev_file->pool,
                                 rev_file->pool));
    }

  return SVN_NO_ERROR;
}
