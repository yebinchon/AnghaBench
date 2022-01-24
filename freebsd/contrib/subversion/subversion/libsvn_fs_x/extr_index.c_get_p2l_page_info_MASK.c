#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_x__revision_file_t ;
struct TYPE_16__ {int /*<<< orphan*/  second; int /*<<< orphan*/  revision; } ;
typedef  TYPE_1__ svn_fs_x__pair_cache_key_t ;
struct TYPE_17__ {int /*<<< orphan*/  p2l_header_cache; } ;
typedef  TYPE_2__ svn_fs_x__data_t ;
struct TYPE_18__ {TYPE_2__* fsap_data; } ;
typedef  TYPE_3__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_19__ {int /*<<< orphan*/  revision; } ;
typedef  TYPE_4__ p2l_page_info_baton_t ;
struct TYPE_20__ {int /*<<< orphan*/  offsets; } ;
typedef  TYPE_5__ p2l_header_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__**,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  p2l_page_info_func ; 
 int /*<<< orphan*/  FUNC4 (void**,scalar_t__*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC6(p2l_page_info_baton_t *baton,
                  svn_fs_x__revision_file_t *rev_file,
                  svn_fs_t *fs,
                  apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  p2l_header_t *header;
  svn_boolean_t is_cached = FALSE;
  void *dummy = NULL;

  /* look for the header data in our cache */
  svn_fs_x__pair_cache_key_t key;
  key.revision = FUNC1(fs, baton->revision);
  key.second = FUNC5(fs, baton->revision);

  FUNC0(FUNC4(&dummy, &is_cached, ffd->p2l_header_cache,
                                 &key, p2l_page_info_func, baton,
                                 scratch_pool));
  if (is_cached)
    return SVN_NO_ERROR;

  FUNC0(FUNC2(&header, rev_file, fs, baton->revision,
                         scratch_pool, scratch_pool));

  /* copy the requested info into *BATON */
  FUNC3(baton, header, header->offsets);

  return SVN_NO_ERROR;
}