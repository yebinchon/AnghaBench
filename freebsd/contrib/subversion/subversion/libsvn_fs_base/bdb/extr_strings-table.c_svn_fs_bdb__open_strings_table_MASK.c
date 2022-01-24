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
struct TYPE_7__ {int /*<<< orphan*/  (* put ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* open ) (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int) ;int /*<<< orphan*/  (* set_flags ) (TYPE_1__*,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  DB_ENV ;
typedef  int /*<<< orphan*/  DBT ;
typedef  TYPE_1__ DB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DB_BTREE ; 
 int DB_CREATE ; 
 int /*<<< orphan*/  DB_DUP ; 
 int DB_EXCL ; 
 char* NEXT_KEY_KEY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int
FUNC8(DB **strings_p,
                               DB_ENV *env,
                               svn_boolean_t create)
{
  const u_int32_t open_flags = (create ? (DB_CREATE | DB_EXCL) : 0);
  DB *strings;

  FUNC0(FUNC7());
  FUNC0(FUNC2(&strings, env, 0));

  /* Enable duplicate keys. This allows the data to be spread out across
     multiple records. Note: this must occur before ->open().  */
  FUNC0(strings->set_flags(strings, DB_DUP));

  FUNC0((strings->open)(FUNC1(strings, NULL),
                          "strings", 0, DB_BTREE,
                          open_flags, 0666));

  if (create)
    {
      DBT key, value;

      /* Create the `next-key' table entry.  */
      FUNC0(strings->put
              (strings, 0,
               FUNC6(&key, NEXT_KEY_KEY),
               FUNC6(&value, "0"), 0));
    }

  *strings_p = strings;
  return 0;
}