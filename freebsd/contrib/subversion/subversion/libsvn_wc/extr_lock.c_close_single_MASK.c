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
struct TYPE_4__ {int /*<<< orphan*/ * db; int /*<<< orphan*/  db_provided; int /*<<< orphan*/  abspath; scalar_t__ closed; } ;
typedef  TYPE_1__ svn_wc_adm_access_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(svn_wc_adm_access_t *adm_access,
             svn_boolean_t preserve_lock,
             apr_pool_t *scratch_pool)
{
  svn_boolean_t locked;

  if (adm_access->closed)
    return SVN_NO_ERROR;

  /* Physically unlock if required */
  FUNC0(FUNC7(&locked, adm_access->db,
                                      adm_access->abspath, TRUE,
                                      scratch_pool));
  if (locked)
    {
      if (!preserve_lock)
        {
          /* Remove the physical lock in the admin directory for
             PATH. It is acceptable for the administrative area to
             have disappeared, such as when the directory is removed
             from the working copy.  It is an error for the lock to
             have disappeared if the administrative area still exists. */

          svn_error_t *err = FUNC8(adm_access->db,
                                                       adm_access->abspath,
                                                       scratch_pool);
          if (err)
            {
              if (FUNC3(adm_access->abspath, scratch_pool))
                return err;
              FUNC2(err);
            }
        }
    }

  /* Reset to prevent further use of the lock. */
  adm_access->closed = TRUE;

  /* Detach from set */
  FUNC0(FUNC5(adm_access->db, adm_access->abspath,
                                       adm_access, scratch_pool));

  /* Possibly close the underlying wc_db. */
  if (!adm_access->db_provided)
    {
      apr_hash_t *opened = FUNC6(adm_access->db,
                                                          scratch_pool);
      if (FUNC1(opened) == 0)
        {
          FUNC0(FUNC4(adm_access->db));
          adm_access->db = NULL;
        }
    }

  return SVN_NO_ERROR;
}