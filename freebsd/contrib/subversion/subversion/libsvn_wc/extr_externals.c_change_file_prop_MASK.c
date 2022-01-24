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
struct edit_baton {int /*<<< orphan*/  pool; int /*<<< orphan*/  propchanges; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC3(void *file_baton,
                 const char *name,
                 const svn_string_t *value,
                 apr_pool_t *pool)
{
  struct edit_baton *eb = file_baton;
  svn_prop_t *propchange;

  propchange = FUNC0(eb->propchanges);
  propchange->name = FUNC1(eb->pool, name);
  propchange->value = FUNC2(value, eb->pool);

  return SVN_NO_ERROR;
}