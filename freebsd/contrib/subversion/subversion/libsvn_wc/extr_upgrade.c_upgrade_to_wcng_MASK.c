#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_upgrade_get_repos_info_t ;
struct TYPE_21__ {int /*<<< orphan*/  uuid; int /*<<< orphan*/  repos; } ;
typedef  TYPE_1__ svn_wc_entry_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_22__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
struct upgrade_data_t {int /*<<< orphan*/  sdb; int /*<<< orphan*/  root_abspath; int /*<<< orphan*/  wc_id; int /*<<< orphan*/  repos_id; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADM_LOG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ SVN_ERR_WC_CORRUPT ; 
 int /*<<< orphan*/  SVN_ERR_WC_UNSUPPORTED_FORMAT ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_WC_ENTRY_THIS_DIR ; 
 int SVN_WC__WCPROPS_LOST ; 
 int SVN_WC__WCPROPS_MANY_FILES_VERSION ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (TYPE_1__*,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC10 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC11 (char const*,char const*) ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC16 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 
 char* FUNC17 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC18 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC19 (void**,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC20 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC21(void **dir_baton,
                void *parent_baton,
                svn_wc__db_t *db,
                const char *dir_abspath,
                int old_format,
                apr_int64_t wc_id,
                svn_wc_upgrade_get_repos_info_t repos_info_func,
                void *repos_info_baton,
                apr_hash_t *repos_cache,
                const struct upgrade_data_t *data,
                apr_pool_t *result_pool,
                apr_pool_t *scratch_pool)
{
  const char *logfile_path = FUNC17(dir_abspath, ADM_LOG,
                                               scratch_pool);
  svn_node_kind_t logfile_on_disk_kind;
  apr_hash_t *entries;
  svn_wc_entry_t *this_dir;
  const char *old_wcroot_abspath, *dir_relpath;
  apr_hash_t *text_bases_info;
  svn_error_t *err;

  /* Don't try to mess with the WC if there are old log files left. */

  /* Is the (first) log file present?  */
  FUNC0(FUNC16(logfile_path, &logfile_on_disk_kind,
                            scratch_pool));
  if (logfile_on_disk_kind == svn_node_file)
    return FUNC12(SVN_ERR_WC_UNSUPPORTED_FORMAT, NULL,
                            FUNC1("Cannot upgrade with existing logs; run a "
                              "cleanup operation on this working copy using "
                              "a client version which is compatible with this "
                              "working copy's format (such as the version "
                              "you are upgrading from), then retry the "
                              "upgrade with the current version"));

  /* Lock this working copy directory, or steal an existing lock. Do this
     BEFORE we read the entries. We don't want another process to modify the
     entries after we've read them into memory.  */
  FUNC0(FUNC4(dir_abspath, scratch_pool));

  /* What's going on here?
   *
   * We're attempting to upgrade an older working copy to the new wc-ng format.
   * The semantics and storage mechanisms between the two are vastly different,
   * so it's going to be a bit painful.  Here's a plan for the operation:
   *
   * 1) Read the old 'entries' using the old-format reader.
   *
   * 2) Create the new DB if it hasn't already been created.
   *
   * 3) Use our compatibility code for writing entries to fill out the (new)
   *    DB state.  Use the remembered checksums, since an entry has only the
   *    MD5 not the SHA1 checksum, and in the case of a revert-base doesn't
   *    even have that.
   *
   * 4) Convert wcprop to the wc-ng format
   *
   * 5) Migrate regular properties to the WC-NG DB.
   */

  /***** ENTRIES - READ *****/
  FUNC0(FUNC18(&entries, dir_abspath,
                                   scratch_pool, scratch_pool));

  this_dir = FUNC14(entries, SVN_WC_ENTRY_THIS_DIR);
  FUNC0(FUNC5(this_dir, dir_abspath,
                            repos_info_func, repos_info_baton,
                            repos_cache,
                            scratch_pool, scratch_pool));

  /* Cache repos UUID pairs for when a subdir doesn't have this information */
  if (!FUNC14(repos_cache, this_dir->repos))
    {
      apr_pool_t *hash_pool = FUNC2(repos_cache);

      FUNC15(repos_cache,
                    FUNC3(hash_pool, this_dir->repos),
                    FUNC3(hash_pool, this_dir->uuid));
    }

  old_wcroot_abspath = FUNC10(dir_abspath,
                                                       data->root_abspath,
                                                       scratch_pool);
  dir_relpath = FUNC11(old_wcroot_abspath, dir_abspath);

  /***** TEXT BASES *****/
  FUNC0(FUNC7(&text_bases_info, dir_abspath, data->root_abspath,
                             data->sdb, scratch_pool, scratch_pool));

  /***** ENTRIES - WRITE *****/
  err = FUNC19(dir_baton, parent_baton, db, data->sdb,
                                       data->repos_id, data->wc_id,
                                       dir_abspath, data->root_abspath,
                                       entries, text_bases_info,
                                       result_pool, scratch_pool);
  if (err && err->apr_err == SVN_ERR_WC_CORRUPT)
    return FUNC13(err,
                                FUNC1("This working copy is corrupt and "
                                  "cannot be upgraded. Please check out "
                                  "a new working copy."));
  else
    FUNC0(err);

  /***** WC PROPS *****/
  /* If we don't know precisely where the wcprops are, ignore them.  */
  if (old_format != SVN_WC__WCPROPS_LOST)
    {
      apr_hash_t *all_wcprops;

      if (old_format <= SVN_WC__WCPROPS_MANY_FILES_VERSION)
        FUNC0(FUNC8(&all_wcprops, dir_abspath,
                                  scratch_pool, scratch_pool));
      else
        FUNC0(FUNC9(&all_wcprops, dir_abspath,
                             scratch_pool, scratch_pool));

      FUNC0(FUNC20(data->sdb, dir_relpath, wc_id,
                                      all_wcprops, scratch_pool));
    }

  /* Upgrade all the properties (including "this dir").

     Note: this must come AFTER the entries have been migrated into the
     database. The upgrade process needs the children in BASE_NODE and
     WORKING_NODE, and to examine the resultant WORKING state.  */
  FUNC0(FUNC6(dir_abspath, data->root_abspath, data->sdb, old_format,
                        wc_id, scratch_pool));

  return SVN_NO_ERROR;
}