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
struct TYPE_10__ {TYPE_4__* fsap_data; } ;
typedef  TYPE_1__ svn_fs_t ;
struct TYPE_11__ {int /*<<< orphan*/  is_packed; int /*<<< orphan*/  start_revision; } ;
typedef  TYPE_2__ svn_fs_fs__revision_file_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_12__ {int /*<<< orphan*/  second; int /*<<< orphan*/  revision; } ;
typedef  TYPE_3__ pair_cache_key_t ;
typedef  int /*<<< orphan*/  l2p_header_t ;
struct TYPE_13__ {int /*<<< orphan*/  l2p_header_cache; } ;
typedef  TYPE_4__ fs_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void**,scalar_t__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(l2p_header_t **header,
               svn_fs_fs__revision_file_t *rev_file,
               svn_fs_t *fs,
               svn_revnum_t revision,
               apr_pool_t *result_pool,
               apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  svn_boolean_t is_cached = FALSE;

  /* first, try cache lookop */
  pair_cache_key_t key;
  key.revision = rev_file->start_revision;
  key.second = rev_file->is_packed;
  FUNC0(FUNC2((void**)header, &is_cached, ffd->l2p_header_cache,
                         &key, result_pool));
  if (is_cached)
    return SVN_NO_ERROR;

  /* read from disk and cache the result */
  FUNC0(FUNC1(header, rev_file, fs, revision, result_pool,
                              scratch_pool));

  return SVN_NO_ERROR;
}