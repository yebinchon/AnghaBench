#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_skel_t ;
struct TYPE_3__ {char* comment; char* owner; char* token; char* path; scalar_t__ is_dav_comment; scalar_t__ creation_date; scalar_t__ expiration_date; } ;
typedef  TYPE_1__ svn_lock_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(svn_skel_t **skel_p,
                               const svn_lock_t *lock,
                               apr_pool_t *pool)
{
  svn_skel_t *skel;

  /* Create the skel. */
  skel = FUNC2(pool);

  /* EXP-DATE is optional.  If not present, just use an empty atom. */
  if (lock->expiration_date)
    FUNC4(FUNC5(
                          FUNC6(lock->expiration_date, pool),
                          pool), skel);
  else
    FUNC4(FUNC3(NULL, 0, pool), skel);

  /* CREATION-DATE */
  FUNC4(FUNC5(
                        FUNC6(lock->creation_date, pool),
                        pool), skel);

  /* XML_P */
  if (lock->is_dav_comment)
    FUNC4(FUNC5("1", pool), skel);
  else
    FUNC4(FUNC5("0", pool), skel);

  /* COMMENT */
  if (lock->comment)
    FUNC4(FUNC5(lock->comment, pool), skel);
  else
    FUNC4(FUNC3(NULL, 0, pool), skel);

  /* OWNER */
  FUNC4(FUNC5(lock->owner, pool), skel);

  /* LOCK-TOKEN */
  FUNC4(FUNC5(lock->token, pool), skel);

  /* PATH */
  FUNC4(FUNC5(lock->path, pool), skel);

  /* "lock" */
  FUNC4(FUNC5("lock", pool), skel);

  /* Validate and return the skel. */
  if (! FUNC0(skel))
    return FUNC1("lock");

  *skel_p = skel;
  return SVN_NO_ERROR;
}