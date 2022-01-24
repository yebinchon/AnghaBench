#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * db; } ;
typedef  TYPE_1__ svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_io_file_del_on_close ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(svn_wc_context_t *wc_ctx,
                            const char *local_abspath,
                            apr_pool_t *scratch_pool)
{
  svn_wc__db_t *db = wc_ctx->db;
  const char *moved_abspath;

  /* Drop any references to the wc that is to be rewritten */
  FUNC0(FUNC7(db, local_abspath, scratch_pool));

  /* Move the admin dir from the wc to a temporary location: MOVED_ABSPATH */
  {
    const char *tmpdir_abspath;
    const char *moved_adm_abspath;
    const char *adm_abspath;

    FUNC0(FUNC8(&tmpdir_abspath, db,
                                           FUNC1(local_abspath,
                                                              scratch_pool),
                                           scratch_pool, scratch_pool));
    FUNC0(FUNC4(NULL, &moved_abspath, tmpdir_abspath,
                                     svn_io_file_del_on_close,
                                     scratch_pool, scratch_pool));
    FUNC0(FUNC2(moved_abspath, APR_OS_DEFAULT, scratch_pool));

    adm_abspath = FUNC6(local_abspath, "", scratch_pool);
    moved_adm_abspath = FUNC6(moved_abspath, "", scratch_pool);
    FUNC0(FUNC3(adm_abspath, moved_adm_abspath, scratch_pool));
  }

  /* Copy entries from temporary location into the main db */
  FUNC0(FUNC11(wc_ctx, moved_abspath, local_abspath,
                       TRUE /* metadata_only */,
                       NULL, NULL, NULL, NULL, scratch_pool));

  /* Cleanup the temporary admin dir */
  FUNC0(FUNC7(db, moved_abspath, scratch_pool));
  FUNC0(FUNC5(moved_abspath, FALSE, NULL, NULL,
                             scratch_pool));

  /* The subdir is now part of our parent working copy. Our caller assumes
     that we return the new node locked, so obtain a lock if we didn't
     receive the lock via our depth infinity lock */
  {
    svn_boolean_t owns_lock;

    FUNC0(FUNC10(&owns_lock, db, local_abspath,
                                        FALSE, scratch_pool));
    if (!owns_lock)
      FUNC0(FUNC9(db, local_abspath, 0, FALSE,
                                       scratch_pool));
  }

  return SVN_NO_ERROR;
}