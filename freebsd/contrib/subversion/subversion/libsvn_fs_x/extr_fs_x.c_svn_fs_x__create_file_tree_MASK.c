#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int format; int max_files_per_dir; scalar_t__ youngest_rev_cache; } ;
typedef  TYPE_1__ svn_fs_x__data_t ;
struct TYPE_20__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  path; TYPE_1__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC20(svn_fs_t *fs,
                           const char *path,
                           int format,
                           int shard_size,
                           apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;

  fs->path = FUNC1(fs->pool, path);
  ffd->format = format;

  /* Use an appropriate sharding mode if supported by the format. */
  ffd->max_files_per_dir = shard_size;

  /* Create the revision data directories. */
  FUNC0(FUNC17(
                              FUNC8(fs, 0, scratch_pool),
                              scratch_pool));

  /* Create the transaction directory. */
  FUNC0(FUNC17(
                                  FUNC12(fs, scratch_pool),
                                  scratch_pool));

  /* Create the protorevs directory. */
  FUNC0(FUNC17(
                            FUNC11(fs, scratch_pool),
                            scratch_pool));

  /* Create the 'current' file. */
  FUNC0(FUNC15(FUNC4(fs, scratch_pool),
                             "0\n", scratch_pool));

  /* Create the 'uuid' file. */
  FUNC0(FUNC16(FUNC5(fs, scratch_pool),
                                   scratch_pool));
  FUNC0(FUNC14(fs, NULL, NULL, FALSE, scratch_pool));

  /* Create the fsfs.conf file. */
  FUNC0(FUNC18(fs, scratch_pool));
  FUNC0(FUNC2(ffd, fs->path, fs->pool, scratch_pool));

  /* Global configuration options. */
  FUNC0(FUNC3(fs));

  /* Add revision 0. */
  FUNC0(FUNC19(fs, scratch_pool));

  /* Create the min unpacked rev file. */
  FUNC0(FUNC15(
                          FUNC6(fs, scratch_pool),
                          "0\n", scratch_pool));

  /* Create the txn-current file if the repository supports
     the transaction sequence file. */
  FUNC0(FUNC15(FUNC9(fs, scratch_pool),
                             "0\n", scratch_pool));
  FUNC0(FUNC16(
                          FUNC10(fs, scratch_pool),
                          scratch_pool));

  /* Initialize the revprop caching info. */
  FUNC0(FUNC16(
                        FUNC7(fs, scratch_pool),
                        scratch_pool));
  FUNC0(FUNC13(fs, scratch_pool));

  ffd->youngest_rev_cache = 0;
  return SVN_NO_ERROR;
}