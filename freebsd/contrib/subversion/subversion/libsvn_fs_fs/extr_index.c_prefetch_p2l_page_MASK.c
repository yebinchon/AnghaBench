#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_5__* fsap_data; } ;
typedef  TYPE_1__ svn_fs_t ;
struct TYPE_18__ {int /*<<< orphan*/  p2l_stream; } ;
typedef  TYPE_2__ svn_fs_fs__revision_file_t ;
struct TYPE_19__ {int /*<<< orphan*/  page; int /*<<< orphan*/  is_packed; scalar_t__ revision; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ svn_fs_fs__page_cache_key_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_20__ {int /*<<< orphan*/  page_size; int /*<<< orphan*/  page_start; int /*<<< orphan*/  next_offset; int /*<<< orphan*/  start_offset; scalar_t__ first_revision; int /*<<< orphan*/  page_no; scalar_t__ revision; } ;
typedef  TYPE_4__ p2l_page_info_baton_t ;
struct TYPE_21__ {int /*<<< orphan*/  p2l_page_cache; } ;
typedef  TYPE_5__ fs_fs_data_t ;
typedef  scalar_t__ apr_uint32_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_off_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 scalar_t__ APR_UINT32_MAX ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,TYPE_2__*,TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_boolean_t *end,
                  int *leaking_bucket,
                  svn_fs_t *fs,
                  svn_fs_fs__revision_file_t *rev_file,
                  p2l_page_info_baton_t *baton,
                  apr_off_t min_offset,
                  apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  svn_boolean_t already_cached;
  apr_array_header_t *page;
  svn_fs_fs__page_cache_key_t key = { 0 };

  /* fetch the page info */
  *end = FALSE;
  baton->revision = baton->first_revision;
  FUNC0(FUNC3(baton, rev_file, fs, scratch_pool));
  if (baton->start_offset < min_offset || !rev_file->p2l_stream)
    {
      /* page outside limits -> stop prefetching */
      *end = TRUE;
      return SVN_NO_ERROR;
    }

  /* do we have that page in our caches already? */
  FUNC1(baton->first_revision <= APR_UINT32_MAX);
  key.revision = (apr_uint32_t)baton->first_revision;
  key.is_packed = FUNC6(fs, baton->first_revision);
  key.page = baton->page_no;
  FUNC0(FUNC4(&already_cached, ffd->p2l_page_cache,
                             &key, scratch_pool));

  /* yes, already cached */
  if (already_cached)
    {
      /* stop prefetching if most pages are already cached. */
      if (!--*leaking_bucket)
        *end = TRUE;

      return SVN_NO_ERROR;
    }

  ++*leaking_bucket;

  /* read from disk */
  FUNC0(FUNC2(&page, rev_file, fs,
                       baton->first_revision,
                       baton->start_offset,
                       baton->next_offset,
                       baton->page_start,
                       baton->page_size,
                       scratch_pool));

  /* and put it into our cache */
  FUNC0(FUNC5(ffd->p2l_page_cache, &key, page, scratch_pool));

  return SVN_NO_ERROR;
}