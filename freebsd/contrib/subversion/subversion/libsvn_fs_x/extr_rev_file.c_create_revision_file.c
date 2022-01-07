
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int start; int end; int * checksum; } ;
struct TYPE_11__ {int start; int end; int * checksum; } ;
struct TYPE_10__ {int start_revision; int is_packed; } ;
struct TYPE_13__ {int * owner; int * pool; TYPE_3__ p2l_info; TYPE_2__ l2p_info; int block_size; int * l2p_stream; int * p2l_stream; int * stream; int * file; TYPE_1__ file_info; TYPE_6__* fs; } ;
typedef TYPE_4__ svn_fs_x__revision_file_t ;
struct TYPE_14__ {int block_size; } ;
typedef TYPE_5__ svn_fs_x__data_t ;
struct TYPE_15__ {TYPE_5__* fsap_data; } ;
typedef TYPE_6__ svn_fs_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_INVALID_REVNUM ;
 TYPE_4__* apr_palloc (int *,int) ;

__attribute__((used)) static svn_fs_x__revision_file_t *
create_revision_file(svn_fs_t *fs,
                     apr_pool_t *result_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;

  svn_fs_x__revision_file_t *file = apr_palloc(result_pool, sizeof(*file));
  file->fs = fs;
  file->file_info.is_packed = FALSE;
  file->file_info.start_revision = SVN_INVALID_REVNUM;
  file->file = ((void*)0);
  file->stream = ((void*)0);
  file->p2l_stream = ((void*)0);
  file->l2p_stream = ((void*)0);
  file->block_size = ffd->block_size;
  file->l2p_info.start = -1;
  file->l2p_info.end = -1;
  file->l2p_info.checksum = ((void*)0);
  file->p2l_info.start = -1;
  file->p2l_info.end = -1;
  file->p2l_info.checksum = ((void*)0);
  file->pool = ((void*)0);
  file->owner = result_pool;

  return file;
}
