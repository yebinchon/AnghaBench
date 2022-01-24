#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_upgrade_get_repos_info_t ;
typedef  int /*<<< orphan*/  svn_wc_notify_t ;
typedef  int /*<<< orphan*/  (* svn_wc_notify_func2_t ) (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
struct TYPE_11__ {int /*<<< orphan*/  uuid; int /*<<< orphan*/  repos; } ;
typedef  TYPE_1__ svn_wc_entry_t ;
typedef  int /*<<< orphan*/  svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
struct TYPE_12__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  scalar_t__ svn_boolean_t ;
struct upgrade_data_t {char const* root_abspath; int /*<<< orphan*/  sdb; int /*<<< orphan*/  wc_id; int /*<<< orphan*/  repos_id; int /*<<< orphan*/ * member_0; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 char* PRISTINE_STORAGE_RELPATH ; 
 char* SDB_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ SVN_ERR_WC_UPGRADE_REQUIRED ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_WC_ENTRY_THIS_DIR ; 
 int SVN_WC__VERSION ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 char const* FUNC7 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC15 (char const*,char*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC16 (int*,scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC29 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_upgraded_path ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,struct upgrade_data_t*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/  (*) (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *),void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC31(svn_wc_context_t *wc_ctx,
               const char *local_abspath,
               svn_wc_upgrade_get_repos_info_t repos_info_func,
               void *repos_info_baton,
               svn_cancel_func_t cancel_func,
               void *cancel_baton,
               svn_wc_notify_func2_t notify_func,
               void *notify_baton,
               apr_pool_t *scratch_pool)
{
  svn_wc__db_t *db;
  struct upgrade_data_t data = { NULL };
  svn_skel_t *work_item, *work_items = NULL;
  const char *pristine_from, *pristine_to, *db_from, *db_to;
  apr_hash_t *repos_cache = FUNC3(scratch_pool);
  svn_wc_entry_t *this_dir;
  apr_hash_t *entries;
  const char *root_adm_abspath;
  svn_error_t *err;
  int result_format;
  svn_boolean_t bumped_format;

  /* Try upgrading a wc-ng-style working copy. */
  FUNC0(FUNC18(&db, NULL /* ### config */, TRUE, FALSE,
                          scratch_pool, scratch_pool));


  err = FUNC16(&result_format, &bumped_format,
                               db, local_abspath,
                               scratch_pool);
  if (err)
    {
      if (err->apr_err != SVN_ERR_WC_UPGRADE_REQUIRED)
        {
          return FUNC10(
                    FUNC9(
                            err,
                            FUNC17(db)));
        }

      FUNC8(err);
      /* Pre 1.7: Fall through */
    }
  else
    {
      /* Auto-upgrade worked! */
      FUNC0(FUNC17(db));

      FUNC1(result_format == SVN_WC__VERSION);

      if (bumped_format && notify_func)
        {
          svn_wc_notify_t *notify;

          notify = FUNC29(local_abspath,
                                        svn_wc_notify_upgraded_path,
                                        scratch_pool);

          notify_func(notify_baton, notify, scratch_pool);
        }

      return SVN_NO_ERROR;
    }

  FUNC0(FUNC6(local_abspath, scratch_pool));

  /* Given a pre-wcng root some/wc we create a temporary wcng in
     some/wc/.svn/tmp/wcng/wc.db and copy the metadata from one to the
     other, then the temporary wc.db file gets moved into the original
     root.  Until the wc.db file is moved the original working copy
     remains a pre-wcng and 'cleanup' with an old client will remove
     the partial upgrade.  Moving the wc.db file creates a wcng, and
     'cleanup' with a new client will complete any outstanding
     upgrade. */

  FUNC0(FUNC24(&entries, local_abspath,
                                   scratch_pool, scratch_pool));

  this_dir = FUNC11(entries, SVN_WC_ENTRY_THIS_DIR);
  FUNC0(FUNC5(this_dir, local_abspath, repos_info_func,
                            repos_info_baton, repos_cache,
                            scratch_pool, scratch_pool));

  /* Cache repos UUID pairs for when a subdir doesn't have this information */
  if (!FUNC11(repos_cache, this_dir->repos))
    FUNC12(repos_cache,
                  FUNC4(scratch_pool, this_dir->repos),
                  FUNC4(scratch_pool, this_dir->uuid));

  /* Create the new DB in the temporary root wc/.svn/tmp/wcng/.svn */
  data.root_abspath = FUNC7(FUNC15(local_abspath, "tmp",
                                                        scratch_pool),
                                       "wcng", scratch_pool);
  root_adm_abspath = FUNC15(data.root_abspath, "",
                                       scratch_pool);
  FUNC0(FUNC14(root_adm_abspath, TRUE, NULL, NULL,
                             scratch_pool));
  FUNC0(FUNC23(root_adm_abspath, scratch_pool));

  /* Create an empty sqlite database for this directory and store it in DB. */
  FUNC0(FUNC19(&data.sdb,
                                   &data.repos_id, &data.wc_id,
                                   db, data.root_abspath,
                                   this_dir->repos, this_dir->uuid,
                                   scratch_pool));

  /* Migrate the entries over to the new database.
   ### We need to think about atomicity here.

   entries_write_new() writes in current format rather than
   f12. Thus, this function bumps a working copy all the way to
   current.  */
  FUNC0(FUNC20(db, data.root_abspath, 0, FALSE,
                                   scratch_pool));

  FUNC2(
    FUNC30(NULL, db, local_abspath,
                         repos_info_func, repos_info_baton,
                         repos_cache, &data,
                         cancel_func, cancel_baton,
                         notify_func, notify_baton,
                         scratch_pool, scratch_pool),
    data.sdb);

  /* A workqueue item to move the pristine dir into place */
  pristine_from = FUNC15(data.root_abspath, PRISTINE_STORAGE_RELPATH,
                                    scratch_pool);
  pristine_to = FUNC15(local_abspath, PRISTINE_STORAGE_RELPATH,
                                  scratch_pool);
  FUNC0(FUNC23(pristine_from, scratch_pool));
  FUNC0(FUNC25(&work_item, db, local_abspath,
                                     pristine_from, pristine_to,
                                     scratch_pool, scratch_pool));
  work_items = FUNC27(work_items, work_item, scratch_pool);

  /* A workqueue item to remove pre-wcng metadata */
  FUNC0(FUNC26(&work_item, scratch_pool));
  work_items = FUNC27(work_items, work_item, scratch_pool);
  FUNC0(FUNC22(db, data.root_abspath, work_items, scratch_pool));

  FUNC0(FUNC21(db, data.root_abspath, scratch_pool));
  FUNC0(FUNC17(db));

  /* Renaming the db file is what makes the pre-wcng into a wcng */
  db_from = FUNC15(data.root_abspath, SDB_FILE, scratch_pool);
  db_to = FUNC15(local_abspath, SDB_FILE, scratch_pool);
  FUNC0(FUNC13(db_from, db_to, FALSE, scratch_pool));

  /* Now we have a working wcng, tidy up the droppings */
  FUNC0(FUNC18(&db, NULL /* ### config */, FALSE, FALSE,
                          scratch_pool, scratch_pool));
  FUNC0(FUNC28(db, local_abspath, cancel_func, cancel_baton,
                         scratch_pool));
  FUNC0(FUNC17(db));

  /* Should we have the workqueue remove this empty dir? */
  FUNC0(FUNC14(data.root_abspath, FALSE, NULL, NULL,
                             scratch_pool));

  return SVN_NO_ERROR;
}