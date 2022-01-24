#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int svn_node_kind_t ;
struct TYPE_14__ {int /*<<< orphan*/  uuid; int /*<<< orphan*/  path; TYPE_2__* fsap_data; } ;
typedef  TYPE_1__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct upgrade_baton_t {int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; int /*<<< orphan*/  notify_baton; int /*<<< orphan*/  (* notify_func ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;TYPE_1__* fs; } ;
struct TYPE_15__ {int format; int max_files_per_dir; scalar_t__ use_log_addressing; } ;
typedef  TYPE_2__ fs_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  PATH_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_GENERAL ; 
 int SVN_FS_FS__FORMAT_NUMBER ; 
 int SVN_FS_FS__MIN_PACKED_FORMAT ; 
 int SVN_FS_FS__MIN_PACKED_REVPROP_FORMAT ; 
 int SVN_FS_FS__MIN_PROTOREVS_DIR_FORMAT ; 
 int SVN_FS_FS__MIN_TXN_CURRENT_FORMAT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,scalar_t__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *),int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *),int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_fs_upgrade_format_bumped ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
#define  svn_node_file 129 
#define  svn_node_none 128 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC21(void *baton, apr_pool_t *pool)
{
  struct upgrade_baton_t *upgrade_baton = baton;
  svn_fs_t *fs = upgrade_baton->fs;
  fs_fs_data_t *ffd = fs->fsap_data;
  int format, max_files_per_dir;
  svn_boolean_t use_log_addressing;
  const char *format_path = FUNC3(fs, pool);
  svn_node_kind_t kind;
  svn_boolean_t needs_revprop_shard_cleanup = FALSE;

  /* Read the FS format number and max-files-per-dir setting. */
  FUNC0(FUNC4(&format, &max_files_per_dir, &use_log_addressing,
                      format_path, pool));

  /* If the config file does not exist, create one. */
  FUNC0(FUNC17(FUNC7(fs->path, PATH_CONFIG, pool),
                            &kind, pool));
  switch (kind)
    {
    case svn_node_none:
      FUNC0(FUNC20(fs, pool));
      break;
    case svn_node_file:
      break;
    default:
      return FUNC8(SVN_ERR_FS_GENERAL, NULL,
                               FUNC1("'%s' is not a regular file."
                                 " Please move it out of "
                                 "the way and try again"),
                               FUNC7(fs->path, PATH_CONFIG, pool));
    }

  /* If we're already up-to-date, there's nothing else to be done here. */
  if (format == SVN_FS_FS__FORMAT_NUMBER)
    return SVN_NO_ERROR;

  /* If our filesystem predates the existence of the 'txn-current
     file', make that file and its corresponding lock file. */
  if (format < SVN_FS_FS__MIN_TXN_CURRENT_FORMAT)
    {
      FUNC0(FUNC2(
                           FUNC10(fs, pool), "0\n",
                           pool));
      FUNC0(FUNC2(
                           FUNC11(fs, pool), "",
                           pool));
    }

  /* If our filesystem predates the existence of the 'txn-protorevs'
     dir, make that directory.  */
  if (format < SVN_FS_FS__MIN_PROTOREVS_DIR_FORMAT)
    {
      FUNC0(FUNC19(
          FUNC12(fs, pool), pool));
    }

  /* If our filesystem is new enough, write the min unpacked rev file. */
  if (format < SVN_FS_FS__MIN_PACKED_FORMAT)
    FUNC0(FUNC18(FUNC9(fs, pool),
                               "0\n", pool));

  /* If the file system supports revision packing but not revprop packing
     *and* the FS has been sharded, pack the revprops up to the point that
     revision data has been packed.  However, keep the non-packed revprop
     files around until after the format bump */
  if (   format >= SVN_FS_FS__MIN_PACKED_FORMAT
      && format < SVN_FS_FS__MIN_PACKED_REVPROP_FORMAT
      && max_files_per_dir > 0)
    {
      needs_revprop_shard_cleanup = TRUE;
      FUNC0(FUNC15(fs,
                                               upgrade_baton->notify_func,
                                               upgrade_baton->notify_baton,
                                               upgrade_baton->cancel_func,
                                               upgrade_baton->cancel_baton,
                                               pool));
    }

  /* We will need the UUID info shortly ...
     Read it before the format bump as the UUID file still uses the old
     format. */
  FUNC0(FUNC5(fs, pool));

  /* Update the format info in the FS struct.  Upgrade steps further
     down will use the format from FS to create missing info. */
  ffd->format = SVN_FS_FS__FORMAT_NUMBER;
  ffd->max_files_per_dir = max_files_per_dir;
  ffd->use_log_addressing = use_log_addressing;

  /* Always add / bump the instance ID such that no form of caching
     accidentally uses outdated information.  Keep the UUID. */
  FUNC0(FUNC13(fs, fs->uuid, NULL, pool));

  /* Bump the format file. */
  FUNC0(FUNC16(fs, TRUE, pool));

  if (upgrade_baton->notify_func)
    FUNC0(upgrade_baton->notify_func(upgrade_baton->notify_baton,
                                       SVN_FS_FS__FORMAT_NUMBER,
                                       svn_fs_upgrade_format_bumped,
                                       pool));

  /* Now, it is safe to remove the redundant revprop files. */
  if (needs_revprop_shard_cleanup)
    FUNC0(FUNC14(fs,
                                               upgrade_baton->notify_func,
                                               upgrade_baton->notify_baton,
                                               upgrade_baton->cancel_func,
                                               upgrade_baton->cancel_baton,
                                               pool));

  /* Done */
  return SVN_NO_ERROR;
}