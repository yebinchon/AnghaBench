#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ svn_wc_context_t ;
struct TYPE_20__ {int /*<<< orphan*/  date; int /*<<< orphan*/  comment; int /*<<< orphan*/  owner; int /*<<< orphan*/  token; } ;
typedef  TYPE_2__ svn_wc__db_lock_t ;
typedef  int /*<<< orphan*/  svn_string_t ;
struct TYPE_21__ {int /*<<< orphan*/  creation_date; int /*<<< orphan*/  comment; int /*<<< orphan*/  owner; int /*<<< orphan*/  token; } ;
typedef  TYPE_3__ svn_lock_t ;
struct TYPE_22__ {scalar_t__ apr_err; } ;
typedef  TYPE_4__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_ENTRY_NOT_FOUND ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 scalar_t__ SVN_ERR_WC_PATH_UNEXPECTED_STATUS ; 
 TYPE_4__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_NEEDS_LOCK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC8 (TYPE_4__*) ; 
 TYPE_4__* FUNC9 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC10 (int /*<<< orphan*/ ,char const*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC11 (int /*<<< orphan*/  const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC13(svn_wc_context_t *wc_ctx,
                 const char *local_abspath,
                 const svn_lock_t *lock,
                 apr_pool_t *scratch_pool)
{
  svn_wc__db_lock_t db_lock;
  svn_error_t *err;
  const svn_string_t *needs_lock;

  FUNC1(FUNC4(local_abspath));

  FUNC0(FUNC12(wc_ctx->db,
                              FUNC3(local_abspath, scratch_pool),
                              scratch_pool));

  db_lock.token = lock->token;
  db_lock.owner = lock->owner;
  db_lock.comment = lock->comment;
  db_lock.date = lock->creation_date;
  err = FUNC10(wc_ctx->db, local_abspath, &db_lock, scratch_pool);
  if (err)
    {
      if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
        return FUNC8(err);

      /* Remap the error.  */
      FUNC6(err);
      return FUNC7(SVN_ERR_ENTRY_NOT_FOUND, NULL,
                               FUNC2("'%s' is not under version control"),
                               FUNC5(local_abspath,
                                                      scratch_pool));
    }

  /* if svn:needs-lock is present, then make the file read-write. */
  err = FUNC11(&needs_lock, wc_ctx->db, local_abspath,
                                 SVN_PROP_NEEDS_LOCK, scratch_pool,
                                 scratch_pool);

  if (err && err->apr_err == SVN_ERR_WC_PATH_UNEXPECTED_STATUS)
    {
      /* The node has non wc representation (e.g. deleted), so
         we don't want to touch the in-wc file */
      FUNC6(err);
      return SVN_NO_ERROR;
    }
  FUNC0(err);

  if (needs_lock)
    FUNC0(FUNC9(local_abspath, FALSE, scratch_pool));

  return SVN_NO_ERROR;
}