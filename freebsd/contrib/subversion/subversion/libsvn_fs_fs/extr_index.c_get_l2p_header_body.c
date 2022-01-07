
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_15__ {TYPE_6__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
struct TYPE_16__ {scalar_t__ start_revision; int p2l_offset; int l2p_offset; int l2p_stream; int is_packed; } ;
typedef TYPE_3__ svn_fs_fs__revision_file_t ;
typedef int svn_error_t ;
struct TYPE_17__ {scalar_t__ revision; int second; } ;
typedef TYPE_4__ pair_cache_key_t ;
struct TYPE_18__ {scalar_t__ first_revision; int page_size; int revision_count; int* page_table_index; TYPE_1__* page_table; } ;
typedef TYPE_5__ l2p_header_t ;
struct TYPE_19__ {int l2p_header_cache; scalar_t__ max_files_per_dir; } ;
typedef TYPE_6__ fs_fs_data_t ;
typedef int apr_uint64_t ;
typedef void* apr_uint32_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
struct TYPE_14__ {void* size; int offset; void* entry_count; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_INDEX_CORRUPTION ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 void* apr_pcalloc (int *,int) ;
 int auto_open_l2p_index (TYPE_3__*,TYPE_2__*,scalar_t__) ;
 int packed_stream_get (int*,int ) ;
 int packed_stream_offset (int ) ;
 int packed_stream_seek (int ,int ) ;
 int svn_cache__set (int ,TYPE_4__*,TYPE_5__*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static svn_error_t *
get_l2p_header_body(l2p_header_t **header,
                    svn_fs_fs__revision_file_t *rev_file,
                    svn_fs_t *fs,
                    svn_revnum_t revision,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  apr_uint64_t value;
  apr_size_t i;
  apr_size_t page, page_count;
  apr_off_t offset;
  l2p_header_t *result = apr_pcalloc(result_pool, sizeof(*result));
  apr_size_t page_table_index;
  svn_revnum_t next_rev;

  pair_cache_key_t key;
  key.revision = rev_file->start_revision;
  key.second = rev_file->is_packed;

  SVN_ERR(auto_open_l2p_index(rev_file, fs, revision));
  packed_stream_seek(rev_file->l2p_stream, 0);



  SVN_ERR(packed_stream_get(&value, rev_file->l2p_stream));
  result->first_revision = (svn_revnum_t)value;
  if (result->first_revision != rev_file->start_revision)
    return svn_error_create(SVN_ERR_FS_INDEX_CORRUPTION, ((void*)0),
                  _("Index rev / pack file revision numbers do not match"));

  SVN_ERR(packed_stream_get(&value, rev_file->l2p_stream));
  result->page_size = (apr_uint32_t)value;
  if (!result->page_size || (result->page_size & (result->page_size - 1)))
    return svn_error_create(SVN_ERR_FS_INDEX_CORRUPTION, ((void*)0),
                            _("L2P index page size is not a power of two"));

  SVN_ERR(packed_stream_get(&value, rev_file->l2p_stream));
  result->revision_count = (int)value;
  if ( result->revision_count != 1
      && result->revision_count != (apr_uint64_t)ffd->max_files_per_dir)
    return svn_error_create(SVN_ERR_FS_INDEX_CORRUPTION, ((void*)0),
                            _("Invalid number of revisions in L2P index"));

  SVN_ERR(packed_stream_get(&value, rev_file->l2p_stream));
  page_count = (apr_size_t)value;
  if (page_count < result->revision_count)
    return svn_error_create(SVN_ERR_FS_INDEX_CORRUPTION, ((void*)0),
                            _("Fewer L2P index pages than revisions"));
  if (page_count > (rev_file->p2l_offset - rev_file->l2p_offset) / 2)
    return svn_error_create(SVN_ERR_FS_INDEX_CORRUPTION, ((void*)0),
                            _("L2P index page count implausibly large"));

  next_rev = result->first_revision + (svn_revnum_t)result->revision_count;
  if (result->first_revision > revision || next_rev <= revision)
    return svn_error_createf(SVN_ERR_FS_INDEX_CORRUPTION, ((void*)0),
                      _("Corrupt L2P index for r%ld only covers r%ld:%ld"),
                      revision, result->first_revision, next_rev);


  result->page_table
    = apr_pcalloc(result_pool, page_count * sizeof(*result->page_table));
  result->page_table_index
    = apr_pcalloc(result_pool, (result->revision_count + 1)
                             * sizeof(*result->page_table_index));


  page_table_index = 0;
  result->page_table_index[0] = page_table_index;

  for (i = 0; i < result->revision_count; ++i)
    {
      SVN_ERR(packed_stream_get(&value, rev_file->l2p_stream));
      if (value == 0)
        return svn_error_create(SVN_ERR_FS_INDEX_CORRUPTION, ((void*)0),
                                _("Revision with no L2P index pages"));

      page_table_index += (apr_size_t)value;
      if (page_table_index > page_count)
        return svn_error_create(SVN_ERR_FS_INDEX_CORRUPTION, ((void*)0),
                                _("L2P page table exceeded"));

      result->page_table_index[i+1] = page_table_index;
    }

  if (page_table_index != page_count)
    return svn_error_create(SVN_ERR_FS_INDEX_CORRUPTION, ((void*)0),
                 _("Revisions do not cover the full L2P index page table"));


  for (page = 0; page < page_count; ++page)
    {
      SVN_ERR(packed_stream_get(&value, rev_file->l2p_stream));
      if (value == 0)
        return svn_error_create(SVN_ERR_FS_INDEX_CORRUPTION, ((void*)0),
                                _("Empty L2P index page"));

      result->page_table[page].size = (apr_uint32_t)value;
      SVN_ERR(packed_stream_get(&value, rev_file->l2p_stream));
      if (value > result->page_size)
        return svn_error_create(SVN_ERR_FS_INDEX_CORRUPTION, ((void*)0),
                                _("Page exceeds L2P index page size"));

      result->page_table[page].entry_count = (apr_uint32_t)value;
    }


  offset = packed_stream_offset(rev_file->l2p_stream);
  for (page = 0; page < page_count; ++page)
    {
      result->page_table[page].offset = offset;
      offset += result->page_table[page].size;
    }


  *header = result;
  SVN_ERR(svn_cache__set(ffd->l2p_header_cache, &key, result, scratch_pool));

  return SVN_NO_ERROR;
}
