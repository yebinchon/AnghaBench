
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_8__ {TYPE_3__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
struct TYPE_9__ {int l2p_offset; int p2l_offset; int footer_offset; int * pool; int * p2l_checksum; int * l2p_checksum; int block_size; int * l2p_stream; int * p2l_stream; int * stream; int * file; int start_revision; int is_packed; } ;
typedef TYPE_2__ svn_fs_fs__revision_file_t ;
struct TYPE_10__ {int block_size; } ;
typedef TYPE_3__ fs_fs_data_t ;
typedef int apr_pool_t ;


 int svn_fs_fs__is_packed_rev (TYPE_1__*,int ) ;
 int svn_fs_fs__packed_base_rev (TYPE_1__*,int ) ;

__attribute__((used)) static void
init_revision_file(svn_fs_fs__revision_file_t *file,
                   svn_fs_t *fs,
                   svn_revnum_t revision,
                   apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;

  file->is_packed = svn_fs_fs__is_packed_rev(fs, revision);
  file->start_revision = svn_fs_fs__packed_base_rev(fs, revision);

  file->file = ((void*)0);
  file->stream = ((void*)0);
  file->p2l_stream = ((void*)0);
  file->l2p_stream = ((void*)0);
  file->block_size = ffd->block_size;
  file->l2p_offset = -1;
  file->l2p_checksum = ((void*)0);
  file->p2l_offset = -1;
  file->p2l_checksum = ((void*)0);
  file->footer_offset = -1;
  file->pool = pool;
}
