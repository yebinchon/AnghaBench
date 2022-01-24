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
struct TYPE_19__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  path; TYPE_2__* fsap_data; } ;
typedef  TYPE_1__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_20__ {int format; int max_files_per_dir; scalar_t__ youngest_rev_cache; int /*<<< orphan*/  use_log_addressing; } ;
typedef  TYPE_2__ fs_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  PATH_REVPROPS_DIR ; 
 int /*<<< orphan*/  PATH_REVS_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SVN_FS_FS__MIN_CONFIG_FILE ; 
 int SVN_FS_FS__MIN_LAYOUT_FORMAT_OPTION_FORMAT ; 
 int SVN_FS_FS__MIN_LOG_ADDRESSING_FORMAT ; 
 int SVN_FS_FS__MIN_PACKED_FORMAT ; 
 int SVN_FS_FS__MIN_PROTOREVS_DIR_FORMAT ; 
 int SVN_FS_FS__MIN_TXN_CURRENT_FORMAT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC21(svn_fs_t *fs,
                            const char *path,
                            int format,
                            int shard_size,
                            svn_boolean_t use_log_addressing,
                            apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;

  fs->path = FUNC1(fs->pool, path);
  ffd->format = format;

  /* Use an appropriate sharding mode if supported by the format. */
  if (format >= SVN_FS_FS__MIN_LAYOUT_FORMAT_OPTION_FORMAT)
    ffd->max_files_per_dir = shard_size;
  else
    ffd->max_files_per_dir = 0;

  /* Select the addressing mode depending on the format. */
  if (format >= SVN_FS_FS__MIN_LOG_ADDRESSING_FORMAT)
    ffd->use_log_addressing = use_log_addressing;
  else
    ffd->use_log_addressing = FALSE;

  /* Create the revision data directories. */
  if (ffd->max_files_per_dir)
    FUNC0(FUNC18(FUNC8(fs, 0,
                                                                  pool),
                                        pool));
  else
    FUNC0(FUNC18(FUNC4(path, PATH_REVS_DIR,
                                                        pool),
                                        pool));

  /* Create the revprops directory. */
  if (ffd->max_files_per_dir)
    FUNC0(FUNC18(FUNC9(fs, 0,
                                                                       pool),
                                        pool));
  else
    FUNC0(FUNC18(FUNC4(path,
                                                        PATH_REVPROPS_DIR,
                                                        pool),
                                        pool));

  /* Create the transaction directory. */
  FUNC0(FUNC18(FUNC13(fs, pool),
                                      pool));

  /* Create the protorevs directory. */
  if (format >= SVN_FS_FS__MIN_PROTOREVS_DIR_FORMAT)
    FUNC0(FUNC18(FUNC12(fs,
                                                                       pool),
                                        pool));

  /* Create the 'current' file. */
  FUNC0(FUNC17(FUNC5(fs, pool), pool));
  FUNC0(FUNC15(fs, 0, 1, 1, pool));

  /* Create the 'uuid' file. */
  FUNC0(FUNC17(FUNC6(fs, pool), pool));
  FUNC0(FUNC14(fs, NULL, NULL, pool));

  /* Create the fsfs.conf file if supported.  Older server versions would
     simply ignore the file but that might result in a different behavior
     than with the later releases.  Also, hotcopy would ignore, i.e. not
     copy, a fsfs.conf with old formats. */
  if (ffd->format >= SVN_FS_FS__MIN_CONFIG_FILE)
    FUNC0(FUNC19(fs, pool));

  FUNC0(FUNC2(ffd, fs->path, fs->pool, pool));

  /* Global configuration options. */
  FUNC0(FUNC3(fs));

  /* Add revision 0. */
  FUNC0(FUNC20(fs, pool));

  /* Create the min unpacked rev file. */
  if (ffd->format >= SVN_FS_FS__MIN_PACKED_FORMAT)
    FUNC0(FUNC16(FUNC7(fs, pool),
                               "0\n", pool));

  /* Create the txn-current file if the repository supports
     the transaction sequence file. */
  if (format >= SVN_FS_FS__MIN_TXN_CURRENT_FORMAT)
    {
      FUNC0(FUNC16(FUNC10(fs, pool),
                                 "0\n", pool));
      FUNC0(FUNC17(
                                 FUNC11(fs, pool),
                                 pool));
    }

  ffd->youngest_rev_cache = 0;
  return SVN_NO_ERROR;
}