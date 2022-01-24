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
struct TYPE_6__ {int /*<<< orphan*/  (* put ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* open ) (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int) ;} ;
typedef  int /*<<< orphan*/  DB_ENV ;
typedef  int /*<<< orphan*/  DBT ;
typedef  TYPE_1__ DB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DB_BTREE ; 
 int DB_CREATE ; 
 int DB_EXCL ; 
 char* NEXT_KEY_KEY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int
FUNC7(DB **nodes_p,
                             DB_ENV *env,
                             svn_boolean_t create)
{
  const u_int32_t open_flags = (create ? (DB_CREATE | DB_EXCL) : 0);
  DB *nodes;

  FUNC0(FUNC6());
  FUNC0(FUNC2(&nodes, env, 0));
  FUNC0((nodes->open)(FUNC1(nodes, NULL),
                        "nodes", 0, DB_BTREE,
                        open_flags, 0666));

  /* Create the `next-key' table entry (use '1' because '0' is
     reserved for the root directory to use). */
  if (create)
  {
    DBT key, value;

    FUNC0(nodes->put(nodes, 0,
                       FUNC5(&key, NEXT_KEY_KEY),
                       FUNC5(&value, "1"), 0));
  }

  *nodes_p = nodes;
  return 0;
}