#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_10__ {int /*<<< orphan*/  second; int /*<<< orphan*/  revision; } ;
typedef  TYPE_1__ svn_fs_x__pair_cache_key_t ;
struct TYPE_11__ {int /*<<< orphan*/  l2p_header_cache; } ;
typedef  TYPE_2__ svn_fs_x__data_t ;
struct TYPE_12__ {TYPE_2__* fsap_data; } ;
typedef  TYPE_3__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_13__ {int /*<<< orphan*/ * pages; int /*<<< orphan*/  revision; } ;
typedef  TYPE_4__ l2p_page_table_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  l2p_page_table_access_func ; 
 int /*<<< orphan*/  FUNC3 (void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC5(apr_array_header_t *pages,
                   svn_fs_t *fs,
                   svn_revnum_t revision,
                   apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_boolean_t is_cached = FALSE;
  l2p_page_table_baton_t baton;

  svn_fs_x__pair_cache_key_t key;
  key.revision = FUNC2(fs, revision);
  key.second = FUNC4(fs, revision);

  FUNC1(pages);
  baton.revision = revision;
  baton.pages = pages;
  FUNC0(FUNC3((void**)&pages, &is_cached,
                                 ffd->l2p_header_cache, &key,
                                 l2p_page_table_access_func, &baton,
                                 scratch_pool));

  return SVN_NO_ERROR;
}