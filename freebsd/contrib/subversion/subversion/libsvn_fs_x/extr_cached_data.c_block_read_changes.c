
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_fs_x__revision_file_t ;
struct TYPE_20__ {scalar_t__ second; int revision; } ;
typedef TYPE_2__ svn_fs_x__pair_cache_key_t ;
struct TYPE_21__ {int item_count; scalar_t__ offset; scalar_t__ size; TYPE_1__* items; } ;
typedef TYPE_3__ svn_fs_x__p2l_entry_t ;
struct TYPE_22__ {int changes_cache; } ;
typedef TYPE_4__ svn_fs_x__data_t ;
struct TYPE_23__ {scalar_t__ end_offset; scalar_t__ count; int eol; int ** changes; scalar_t__ start_offset; } ;
typedef TYPE_5__ svn_fs_x__changes_list_t ;
struct TYPE_24__ {scalar_t__ next; scalar_t__ next_offset; int eol; } ;
typedef TYPE_6__ svn_fs_x__changes_context_t ;
typedef int svn_fs_x__change_t ;
struct TYPE_25__ {TYPE_4__* fsap_data; } ;
typedef TYPE_7__ svn_fs_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_26__ {scalar_t__ nelts; scalar_t__ elts; } ;
typedef TYPE_8__ apr_array_header_t ;
struct TYPE_19__ {int change_set; } ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 scalar_t__ SVN_FS_X__CHANGES_BLOCK_SIZE ;
 int * SVN_NO_ERROR ;
 int read_item (int **,TYPE_7__*,int *,TYPE_3__*,int *) ;
 int svn_cache__has_key (scalar_t__*,int ,TYPE_2__*,int *) ;
 int svn_cache__set (int ,TYPE_2__*,TYPE_5__*,int *) ;
 int svn_fs_x__get_revnum (int ) ;
 int svn_fs_x__read_changes (TYPE_8__**,int *,scalar_t__,int *,int *) ;
 int svn_fs_x__rev_file_offset (scalar_t__*,int *) ;
 int svn_fs_x__rev_file_seek (int *,int *,scalar_t__) ;
 int svn_fs_x__rev_file_stream (int **,int *) ;

__attribute__((used)) static svn_error_t *
block_read_changes(apr_array_header_t **changes,
                   svn_fs_t *fs,
                   svn_fs_x__revision_file_t *rev_file,
                   svn_fs_x__p2l_entry_t* entry,
                   svn_fs_x__changes_context_t *context,
                   svn_boolean_t must_read,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_stream_t *stream;
  svn_fs_x__pair_cache_key_t key;
  svn_fs_x__changes_list_t changes_list;




  apr_size_t next = must_read ? context->next : 0;
  apr_size_t next_offset = must_read ? context->next_offset : 0;


  SVN_ERR_ASSERT(entry->item_count == 1);


  key.revision = svn_fs_x__get_revnum(entry->items[0].change_set);
  key.second = next;


  if (!must_read)
    {
      svn_boolean_t is_cached = FALSE;
      SVN_ERR(svn_cache__has_key(&is_cached, ffd->changes_cache, &key,
                                 scratch_pool));
      if (is_cached)
        return SVN_NO_ERROR;
    }


  if (!must_read || next == 0)
    SVN_ERR(read_item(&stream, fs, rev_file, entry, scratch_pool));


  SVN_ERR(svn_fs_x__rev_file_seek(rev_file, ((void*)0),
                                  entry->offset + next_offset));
  SVN_ERR(svn_fs_x__rev_file_stream(&stream, rev_file));


  SVN_ERR(svn_fs_x__read_changes(changes, stream, SVN_FS_X__CHANGES_BLOCK_SIZE,
                                 result_pool, scratch_pool));

  SVN_ERR(svn_fs_x__rev_file_offset(&changes_list.end_offset, rev_file));
  changes_list.end_offset -= entry->offset;
  changes_list.start_offset = next_offset;
  changes_list.count = (*changes)->nelts;
  changes_list.changes = (svn_fs_x__change_t **)(*changes)->elts;
  changes_list.eol = (changes_list.count < SVN_FS_X__CHANGES_BLOCK_SIZE)
                     || (changes_list.end_offset + 1 >= entry->size);



  SVN_ERR(svn_cache__set(ffd->changes_cache, &key, &changes_list,
                         scratch_pool));



  if (must_read)
    {
      context->next_offset = changes_list.end_offset;
      context->eol = changes_list.eol;
    }

  return SVN_NO_ERROR;
}
