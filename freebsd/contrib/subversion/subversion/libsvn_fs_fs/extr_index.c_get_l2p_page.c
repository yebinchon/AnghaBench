
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_t ;
struct TYPE_8__ {int l2p_stream; } ;
typedef TYPE_1__ svn_fs_fs__revision_file_t ;
typedef int svn_error_t ;
struct TYPE_9__ {scalar_t__ offset; int entry_count; scalar_t__ size; } ;
typedef TYPE_2__ l2p_page_table_entry_t ;
struct TYPE_10__ {int entry_count; scalar_t__* offsets; } ;
typedef TYPE_3__ l2p_page_t ;
typedef scalar_t__ apr_uint64_t ;
typedef size_t apr_uint32_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_INDEX_CORRUPTION ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 void* apr_pcalloc (int *,int) ;
 int auto_open_l2p_index (TYPE_1__*,int *,int ) ;
 scalar_t__ decode_int (scalar_t__) ;
 int packed_stream_get (scalar_t__*,int ) ;
 scalar_t__ packed_stream_offset (int ) ;
 int packed_stream_seek (int ,scalar_t__) ;
 int * svn_error_create (int ,int *,int ) ;

__attribute__((used)) static svn_error_t *
get_l2p_page(l2p_page_t **page,
             svn_fs_fs__revision_file_t *rev_file,
             svn_fs_t *fs,
             svn_revnum_t start_revision,
             l2p_page_table_entry_t *table_entry,
             apr_pool_t *result_pool)
{
  apr_uint32_t i;
  l2p_page_t *result = apr_pcalloc(result_pool, sizeof(*result));
  apr_uint64_t last_value = 0;


  SVN_ERR(auto_open_l2p_index(rev_file, fs, start_revision));
  packed_stream_seek(rev_file->l2p_stream, table_entry->offset);


  result->entry_count = table_entry->entry_count;
  result->offsets = apr_pcalloc(result_pool, result->entry_count
                                           * sizeof(*result->offsets));


  for (i = 0; i < result->entry_count; ++i)
    {
      apr_uint64_t value = 0;
      SVN_ERR(packed_stream_get(&value, rev_file->l2p_stream));
      last_value += decode_int(value);
      result->offsets[i] = last_value - 1;
    }



  if ( packed_stream_offset(rev_file->l2p_stream)
      != table_entry->offset + table_entry->size)
    return svn_error_create(SVN_ERR_FS_INDEX_CORRUPTION, ((void*)0),
                _("L2P actual page size does not match page table value."));

  *page = result;

  return SVN_NO_ERROR;
}
