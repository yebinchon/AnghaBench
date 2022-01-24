#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_6__ {int (* open ) (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int) ;int (* close ) (TYPE_1__*,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  DB_ENV ;
typedef  TYPE_1__ DB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DB_BTREE ; 
 int DB_CREATE ; 
 int DB_EXCL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int FUNC2 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 

int
FUNC6(DB **lock_tokens_p,
                                   DB_ENV *env,
                                   svn_boolean_t create)
{
  const u_int32_t open_flags = (create ? (DB_CREATE | DB_EXCL) : 0);
  DB *lock_tokens;
  int error;

  FUNC0(FUNC5());
  FUNC0(FUNC2(&lock_tokens, env, 0));
  error = (lock_tokens->open)(FUNC1(lock_tokens, NULL),
                              "lock-tokens", 0, DB_BTREE,
                              open_flags, 0666);

  /* Create the table if it doesn't yet exist.  This is a form of
     automagical repository upgrading. */
  if (error == ENOENT && (! create))
    {
      FUNC0(lock_tokens->close(lock_tokens, 0));
      return FUNC6(lock_tokens_p, env, TRUE);
    }
  FUNC0(error);

  *lock_tokens_p = lock_tokens;
  return 0;
}