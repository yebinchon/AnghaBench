#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_20__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
struct TYPE_21__ {TYPE_6__* fsap_data; } ;
typedef  TYPE_1__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_fs__revision_file_t ;
struct TYPE_23__ {int page; scalar_t__ is_packed; scalar_t__ revision; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ svn_fs_fs__page_cache_key_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  l2p_page_table_entry_t ;
struct TYPE_24__ {int /*<<< orphan*/  offsets; } ;
typedef  TYPE_3__ l2p_page_t ;
struct TYPE_22__ {scalar_t__ size; scalar_t__ offset; } ;
struct TYPE_25__ {int page_no; scalar_t__ first_revision; TYPE_20__ entry; int /*<<< orphan*/  page_offset; void* item_index; scalar_t__ revision; } ;
typedef  TYPE_4__ l2p_page_info_baton_t ;
struct TYPE_26__ {scalar_t__ offset; int /*<<< orphan*/  page_offset; void* item_index; scalar_t__ revision; } ;
typedef  TYPE_5__ l2p_entry_baton_t ;
struct TYPE_27__ {int max_files_per_dir; scalar_t__ use_block_read; int /*<<< orphan*/  l2p_page_cache; scalar_t__ block_size; } ;
typedef  TYPE_6__ fs_fs_data_t ;
typedef  void* apr_uint64_t ;
typedef  scalar_t__ apr_uint32_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_off_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ APR_UINT32_MAX ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__**,int /*<<< orphan*/ *,TYPE_1__*,scalar_t__,TYPE_20__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  l2p_entry_access_func ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,TYPE_1__*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (void**,scalar_t__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC14(apr_off_t *offset,
                 svn_fs_t *fs,
                 svn_fs_fs__revision_file_t *rev_file,
                 svn_revnum_t revision,
                 apr_uint64_t item_index,
                 apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  l2p_page_info_baton_t info_baton;
  l2p_entry_baton_t page_baton;
  l2p_page_t *page = NULL;
  svn_fs_fs__page_cache_key_t key = { 0 };
  svn_boolean_t is_cached = FALSE;
  void *dummy = NULL;

  /* read index master data structure and extract the info required to
   * access the l2p index page for (REVISION,ITEM_INDEX)*/
  info_baton.revision = revision;
  info_baton.item_index = item_index;
  FUNC1(FUNC5(&info_baton, rev_file, fs, scratch_pool));

  /* try to find the page in the cache and get the OFFSET from it */
  page_baton.revision = revision;
  page_baton.item_index = item_index;
  page_baton.page_offset = info_baton.page_offset;

  FUNC3(revision <= APR_UINT32_MAX);
  key.revision = (apr_uint32_t)revision;
  key.is_packed = FUNC10(fs, revision);
  key.page = info_baton.page_no;

  FUNC1(FUNC8(&dummy, &is_cached,
                                 ffd->l2p_page_cache, &key,
                                 l2p_entry_access_func, &page_baton,
                                 scratch_pool));

  if (!is_cached)
    {
      /* we need to read the info from disk (might already be in the
       * APR file buffer, though) */
      apr_array_header_t *pages;
      svn_revnum_t prefetch_revision;
      svn_revnum_t last_revision
        = info_baton.first_revision
          + (key.is_packed ? ffd->max_files_per_dir : 1);
      svn_boolean_t end;
      apr_off_t max_offset
        = FUNC0(info_baton.entry.offset + info_baton.entry.size,
                    ffd->block_size);
      apr_off_t min_offset = max_offset - ffd->block_size;

      /* read the relevant page */
      FUNC1(FUNC4(&page, rev_file, fs, info_baton.first_revision,
                           &info_baton.entry, scratch_pool));

      /* cache the page and extract the result we need */
      FUNC1(FUNC9(ffd->l2p_page_cache, &key, page, scratch_pool));
      FUNC1(FUNC6(&page_baton, page, page->offsets,
                                 scratch_pool));

      if (ffd->use_block_read)
        {
          apr_pool_t *iterpool = FUNC12(scratch_pool);

          /* prefetch pages from following and preceding revisions */
          pages = FUNC2(scratch_pool, 16,
                                 sizeof(l2p_page_table_entry_t));
          end = FALSE;
          for (prefetch_revision = revision;
              prefetch_revision < last_revision && !end;
              ++prefetch_revision)
            {
              int excluded_page_no = prefetch_revision == revision
                                  ? info_baton.page_no
                                  : -1;
              FUNC11(iterpool);

              FUNC1(FUNC7(&end, fs, rev_file,
                                        info_baton.first_revision,
                                        prefetch_revision, pages,
                                        excluded_page_no, min_offset,
                                        max_offset, iterpool));
            }

          end = FALSE;
          for (prefetch_revision = revision-1;
              prefetch_revision >= info_baton.first_revision && !end;
              --prefetch_revision)
            {
              FUNC11(iterpool);

              FUNC1(FUNC7(&end, fs, rev_file,
                                        info_baton.first_revision,
                                        prefetch_revision, pages, -1,
                                        min_offset, max_offset, iterpool));
            }

          FUNC13(iterpool);
        }
    }

  *offset = page_baton.offset;

  return SVN_NO_ERROR;
}