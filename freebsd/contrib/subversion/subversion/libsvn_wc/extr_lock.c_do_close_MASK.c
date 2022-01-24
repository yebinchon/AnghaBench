#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* path; int /*<<< orphan*/  db; int /*<<< orphan*/  abspath; scalar_t__ closed; } ;
typedef  TYPE_1__ svn_wc_adm_access_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC13(svn_wc_adm_access_t *adm_access,
         svn_boolean_t preserve_lock,
         apr_pool_t *scratch_pool)
{
  svn_wc_adm_access_t *look;

  if (adm_access->closed)
    return SVN_NO_ERROR;

  /* If we are part of the shared set, then close descendant batons.  */
  look = FUNC7(adm_access->abspath, adm_access->db, scratch_pool);
  if (look != NULL)
    {
      apr_hash_t *opened;
      apr_hash_index_t *hi;

      /* Gather all the opened access batons from the DB.  */
      opened = FUNC12(adm_access->db, scratch_pool);

      /* Close any that are descendants of this baton.  */
      for (hi = FUNC2(scratch_pool, opened);
           hi;
           hi = FUNC3(hi))
        {
          const char *abspath = FUNC4(hi);
          svn_wc_adm_access_t *child = FUNC5(hi);
          const char *path = child->path;

          if (FUNC0(child))
            {
              /* We don't close the missing entry, but get rid of it from
                 the set. */
              FUNC11(adm_access->db, abspath,
                                           scratch_pool);
              continue;
            }

          if (! FUNC9(adm_access->path, path)
              || FUNC8(adm_access->path, path) == 0)
            continue;

          FUNC1(FUNC6(child, preserve_lock, scratch_pool));
        }
    }

  return FUNC10(FUNC6(adm_access, preserve_lock,
                                      scratch_pool));
}