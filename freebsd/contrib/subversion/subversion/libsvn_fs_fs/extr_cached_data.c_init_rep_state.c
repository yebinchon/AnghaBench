
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {TYPE_7__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_fs_fs__revision_file_t ;
struct TYPE_15__ {scalar_t__ type; scalar_t__ header_size; } ;
typedef TYPE_3__ svn_fs_fs__rep_header_t ;
struct TYPE_13__ {int number; int revision; } ;
struct TYPE_16__ {scalar_t__ type; scalar_t__ size; scalar_t__ offset; TYPE_1__ item; } ;
typedef TYPE_4__ svn_fs_fs__p2l_entry_t ;
typedef int svn_error_t ;
struct TYPE_17__ {int * pool; int revision; TYPE_2__* fs; int * rfile; } ;
typedef TYPE_5__ shared_file_t ;
struct TYPE_18__ {int current; int ver; int combined_cache; int window_cache; int raw_window_cache; scalar_t__ chunk_index; scalar_t__ size; scalar_t__ header_size; scalar_t__ start; int item_index; int revision; TYPE_5__* sfile; } ;
typedef TYPE_6__ rep_state_t ;
struct TYPE_19__ {int combined_window_cache; int txdelta_window_cache; int raw_window_cache; } ;
typedef TYPE_7__ fs_fs_data_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT (int) ;
 scalar_t__ SVN_FS_FS__ITEM_TYPE_DIR_PROPS ;
 scalar_t__ SVN_FS_FS__ITEM_TYPE_FILE_REP ;
 int * SVN_NO_ERROR ;
 TYPE_5__* apr_pcalloc (int *,int) ;
 scalar_t__ svn_fs_fs__rep_plain ;

__attribute__((used)) static svn_error_t *
init_rep_state(rep_state_t *rs,
               svn_fs_fs__rep_header_t *rep_header,
               svn_fs_t *fs,
               svn_fs_fs__revision_file_t *file,
               svn_fs_fs__p2l_entry_t* entry,
               apr_pool_t *result_pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  shared_file_t *shared_file = apr_pcalloc(result_pool, sizeof(*shared_file));


  SVN_ERR_ASSERT(entry->type >= SVN_FS_FS__ITEM_TYPE_FILE_REP
                 && entry->type <= SVN_FS_FS__ITEM_TYPE_DIR_PROPS);

  shared_file->rfile = file;
  shared_file->fs = fs;
  shared_file->revision = entry->item.revision;
  shared_file->pool = result_pool;

  rs->sfile = shared_file;
  rs->revision = entry->item.revision;
  rs->item_index = entry->item.number;
  rs->header_size = rep_header->header_size;
  rs->start = entry->offset + rs->header_size;
  rs->current = rep_header->type == svn_fs_fs__rep_plain ? 0 : 4;
  rs->size = entry->size - rep_header->header_size - 7;
  rs->ver = -1;
  rs->chunk_index = 0;
  rs->raw_window_cache = ffd->raw_window_cache;
  rs->window_cache = ffd->txdelta_window_cache;
  rs->combined_cache = ffd->combined_window_cache;

  return SVN_NO_ERROR;
}
