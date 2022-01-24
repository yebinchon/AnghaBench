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
typedef  int u_int32_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_7__ {int (* open ) (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int) ;int (* close ) (TYPE_1__*,int /*<<< orphan*/ ) ;int (* put ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  DB_ENV ;
typedef  int /*<<< orphan*/  DBT ;
typedef  TYPE_1__ DB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DB_BTREE ; 
 int DB_CREATE ; 
 int DB_EXCL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 char* SVN_FS_BASE__MISC_FORWARD_DELTA_UPGRADE ; 
 scalar_t__ TRUE ; 
 int FUNC2 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 () ; 

int
FUNC8(DB **miscellaneous_p,
                                     DB_ENV *env,
                                     svn_boolean_t create)
{
  const u_int32_t open_flags = (create ? (DB_CREATE | DB_EXCL) : 0);
  DB *miscellaneous;
  int error;

  FUNC0(FUNC7());
  FUNC0(FUNC2(&miscellaneous, env, 0));
  error = (miscellaneous->open)(FUNC1(miscellaneous, NULL),
                                "miscellaneous", 0, DB_BTREE,
                                open_flags, 0666);

  /* Create the table if it doesn't yet exist.  This is a form of
     automagical repository upgrading. */
  if (error == ENOENT && (! create))
    {
      FUNC0(miscellaneous->close(miscellaneous, 0));
      return FUNC8(miscellaneous_p, env, TRUE);
    }
  FUNC0(error);

  /* If we're creating the table from scratch (not upgrading), record the
     upgrade rev as 0. */
  if (create)
    {
      DBT key, value;

      FUNC0(miscellaneous->put
              (miscellaneous, 0,
               FUNC6
               (&key, SVN_FS_BASE__MISC_FORWARD_DELTA_UPGRADE),
               FUNC6(&value, "0"), 0));
    }

  *miscellaneous_p = miscellaneous;
  return 0;
}