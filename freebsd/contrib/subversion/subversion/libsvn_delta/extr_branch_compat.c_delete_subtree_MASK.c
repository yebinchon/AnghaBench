#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {scalar_t__ action; int /*<<< orphan*/  deleting_rev; scalar_t__ deleting; int /*<<< orphan*/  changing_rev; } ;
typedef  TYPE_1__ change_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 scalar_t__ RESTRUCTURE_ADD ; 
 scalar_t__ RESTRUCTURE_DELETE ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int) ; 
 char const* FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,TYPE_1__*) ; 
 char* FUNC9 (char const*,char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC10(apr_hash_t *changes,
               const char *relpath,
               svn_revnum_t deleting_rev)
{
  apr_pool_t *changes_pool = FUNC3(changes);
  apr_pool_t *scratch_pool = changes_pool;
  change_node_t *change = FUNC7(changes, relpath);

  if (change)
    {
      /* If this previous change was a non-replacing addition, there
         is no longer any change to be made at this path. If it was
         a replacement or a modification, it now becomes a delete.
         (If it was a delete, this attempt to delete is an error.) */
       FUNC0(change->action != RESTRUCTURE_DELETE);
       if (change->action == RESTRUCTURE_ADD && !change->deleting)
         {
           FUNC8(changes, relpath, NULL);
           change = NULL;
         }
       else
         {
           change->action = RESTRUCTURE_DELETE;
         }
    }
  else
    {
      /* There was no change recorded at this path. Record a delete. */
      change = FUNC5(changes_pool, sizeof(*change));
      change->action = RESTRUCTURE_DELETE;
      change->changing_rev = SVN_INVALID_REVNUM;
      change->deleting = TRUE;
      change->deleting_rev = deleting_rev;

      FUNC8(changes, FUNC6(changes_pool, relpath), change);
    }

  /* Elide all child ops. */
  {
    apr_hash_index_t *hi;

    for (hi = FUNC1(scratch_pool, changes);
         hi; hi = FUNC2(hi))
      {
        const char *this_relpath = FUNC4(hi);
        const char *r = FUNC9(relpath, this_relpath);

        if (r && r[0])
          {
            FUNC8(changes, this_relpath, NULL);
          }
      }
  }

  return SVN_NO_ERROR;
}