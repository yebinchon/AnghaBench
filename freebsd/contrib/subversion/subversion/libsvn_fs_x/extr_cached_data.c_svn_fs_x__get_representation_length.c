
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_fs_x__revision_file_t ;
struct TYPE_11__ {int item_index; int revision; int is_packed; int member_0; } ;
typedef TYPE_2__ svn_fs_x__representation_cache_key_t ;
typedef int svn_fs_x__rep_header_t ;
struct TYPE_12__ {scalar_t__ type; int item_count; TYPE_1__* items; } ;
typedef TYPE_3__ svn_fs_x__p2l_entry_t ;
typedef int svn_fs_t ;
typedef int svn_filesize_t ;
typedef int svn_error_t ;
struct TYPE_13__ {int size; int member_0; } ;
typedef TYPE_4__ rep_state_t ;
typedef int apr_pool_t ;
struct TYPE_10__ {int number; int change_set; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 scalar_t__ SVN_FS_X__ITEM_TYPE_DIR_PROPS ;
 scalar_t__ SVN_FS_X__ITEM_TYPE_FILE_REP ;
 int * SVN_NO_ERROR ;
 int cache_windows (int *,int *,TYPE_4__*,int,int *) ;
 int init_rep_state (TYPE_4__*,int *,int *,int *,TYPE_3__*,int *) ;
 int read_rep_header (int **,int *,int *,TYPE_2__*,int *) ;
 int svn_fs_x__get_revnum (int ) ;
 int svn_fs_x__is_packed_rev (int *,int ) ;

svn_error_t *
svn_fs_x__get_representation_length(svn_filesize_t *packed_len,
                                    svn_filesize_t *expanded_len,
                                    svn_fs_t *fs,
                                    svn_fs_x__revision_file_t *rev_file,
                                    svn_fs_x__p2l_entry_t* entry,
                                    apr_pool_t *scratch_pool)
{
  svn_fs_x__representation_cache_key_t key = { 0 };
  rep_state_t rs = { 0 };
  svn_fs_x__rep_header_t *rep_header;


  SVN_ERR_ASSERT(entry->type >= SVN_FS_X__ITEM_TYPE_FILE_REP
                 && entry->type <= SVN_FS_X__ITEM_TYPE_DIR_PROPS);
  SVN_ERR_ASSERT(entry->item_count == 1);


  key.revision = svn_fs_x__get_revnum(entry->items[0].change_set);
  key.is_packed = svn_fs_x__is_packed_rev(fs, key.revision);
  key.item_index = entry->items[0].number;
  SVN_ERR(read_rep_header(&rep_header, fs, rev_file, &key, scratch_pool));


  SVN_ERR(init_rep_state(&rs, rep_header, fs, rev_file, entry,
                         scratch_pool));



  *packed_len = rs.size;
  SVN_ERR(cache_windows(expanded_len, fs, &rs, -1, scratch_pool));

  return SVN_NO_ERROR;
}
