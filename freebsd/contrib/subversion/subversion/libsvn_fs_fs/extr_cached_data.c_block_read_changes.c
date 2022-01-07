
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int svn_stream_t ;
struct TYPE_17__ {TYPE_6__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_fs_fs__revision_file_t ;
struct TYPE_16__ {int revision; } ;
struct TYPE_18__ {int size; TYPE_1__ item; } ;
typedef TYPE_3__ svn_fs_fs__p2l_entry_t ;
struct TYPE_19__ {scalar_t__ count; int eol; int ** changes; scalar_t__ start_offset; int end_offset; } ;
typedef TYPE_4__ svn_fs_fs__changes_list_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_20__ {scalar_t__ second; int revision; } ;
typedef TYPE_5__ pair_cache_key_t ;
struct TYPE_21__ {scalar_t__ changes_cache; } ;
typedef TYPE_6__ fs_fs_data_t ;
typedef int change_t ;
typedef int apr_pool_t ;
struct TYPE_22__ {scalar_t__ nelts; scalar_t__ elts; } ;
typedef TYPE_7__ apr_array_header_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_FS_FS__CHANGES_BLOCK_SIZE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int read_item (int **,TYPE_2__*,int *,TYPE_3__*,int *) ;
 int svn_cache__has_key (scalar_t__*,scalar_t__,TYPE_5__*,int *) ;
 int svn_cache__set (scalar_t__,TYPE_5__*,TYPE_4__*,int *) ;
 int svn_fs_fs__read_changes (TYPE_7__**,int *,scalar_t__,int *,int *) ;

__attribute__((used)) static svn_error_t *
block_read_changes(svn_fs_t *fs,
                   svn_fs_fs__revision_file_t *rev_file,
                   svn_fs_fs__p2l_entry_t *entry,
                   apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  svn_stream_t *stream;
  apr_array_header_t *changes;

  pair_cache_key_t key;
  key.revision = entry->item.revision;
  key.second = 0;

  if (!ffd->changes_cache)
    return SVN_NO_ERROR;


  if (ffd->changes_cache)
    {
      svn_boolean_t is_cached;
      SVN_ERR(svn_cache__has_key(&is_cached, ffd->changes_cache, &key,
                                 scratch_pool));
      if (is_cached)
        return SVN_NO_ERROR;
    }

  SVN_ERR(read_item(&stream, fs, rev_file, entry, scratch_pool));







  SVN_ERR(svn_fs_fs__read_changes(&changes, stream,
                                  SVN_FS_FS__CHANGES_BLOCK_SIZE + 1,
                                  scratch_pool, scratch_pool));



  if (changes->nelts <= SVN_FS_FS__CHANGES_BLOCK_SIZE)
    {
      svn_fs_fs__changes_list_t changes_list;


      changes_list.end_offset = entry->size;
      changes_list.start_offset = 0;
      changes_list.count = changes->nelts;
      changes_list.changes = (change_t **)changes->elts;
      changes_list.eol = TRUE;

      SVN_ERR(svn_cache__set(ffd->changes_cache, &key, &changes_list,
                             scratch_pool));
    }

  return SVN_NO_ERROR;
}
