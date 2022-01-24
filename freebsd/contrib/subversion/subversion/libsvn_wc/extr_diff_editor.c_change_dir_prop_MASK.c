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
typedef  scalar_t__ svn_prop_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct dir_baton_t {int /*<<< orphan*/  pool; int /*<<< orphan*/  propchanges; int /*<<< orphan*/  has_propchange; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ svn_prop_regular_kind ; 
 scalar_t__ svn_prop_wc_kind ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC4(void *dir_baton,
                const char *name,
                const svn_string_t *value,
                apr_pool_t *pool)
{
  struct dir_baton_t *db = dir_baton;
  svn_prop_t *propchange;
  svn_prop_kind_t propkind;

  propkind = FUNC2(name);
  if (propkind == svn_prop_wc_kind)
    return SVN_NO_ERROR;
  else if (propkind == svn_prop_regular_kind)
    db->has_propchange = TRUE;

  propchange = FUNC0(db->propchanges);
  propchange->name = FUNC1(db->pool, name);
  propchange->value = FUNC3(value, db->pool);

  return SVN_NO_ERROR;
}