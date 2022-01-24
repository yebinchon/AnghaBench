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
typedef  int /*<<< orphan*/  svn_string_t ;
struct TYPE_3__ {int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ svn_prop_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct dir_baton {int /*<<< orphan*/  edited; int /*<<< orphan*/  pool; int /*<<< orphan*/  propchanges; scalar_t__ skip_this; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct dir_baton*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_prop_regular_kind ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC6(void *dir_baton,
                const char *name,
                const svn_string_t *value,
                apr_pool_t *pool)
{
  svn_prop_t *propchange;
  struct dir_baton *db = dir_baton;

  if (db->skip_this)
    return SVN_NO_ERROR;

  propchange = FUNC1(db->propchanges);
  propchange->name = FUNC2(db->pool, name);
  propchange->value = FUNC5(value, db->pool);

  if (!db->edited && FUNC4(name) == svn_prop_regular_kind)
    FUNC0(FUNC3(db, pool));

  return SVN_NO_ERROR;
}