#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int /*<<< orphan*/  map_conflict_action_xml ; 
 int /*<<< orphan*/  map_conflict_reason_xml ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
#define  svn_wc_conflict_action_add 134 
#define  svn_wc_conflict_action_delete 133 
#define  svn_wc_conflict_action_edit 132 
#define  svn_wc_conflict_reason_added 131 
#define  svn_wc_conflict_reason_deleted 130 
#define  svn_wc_conflict_reason_edited 129 
#define  svn_wc_conflict_reason_obstructed 128 

svn_error_t *
FUNC8(
  const char **desc,
  svn_client_conflict_t *conflict,
  apr_pool_t *pool)
{
  const char *reason_str, *action_str;

  /* We provide separately translatable strings for the values that we
   * know about, and a fall-back in case any other values occur. */
  switch (FUNC5(conflict))
    {
      case svn_wc_conflict_reason_edited:
        reason_str = FUNC1("local edit");
        break;
      case svn_wc_conflict_reason_added:
        reason_str = FUNC1("local add");
        break;
      case svn_wc_conflict_reason_deleted:
        reason_str = FUNC1("local delete");
        break;
      case svn_wc_conflict_reason_obstructed:
        reason_str = FUNC1("local obstruction");
        break;
      default:
        reason_str = FUNC2(
                       pool, FUNC1("local %s"),
                       FUNC7(
                         map_conflict_reason_xml,
                         FUNC5(conflict)));
        break;
    }
  switch (FUNC4(conflict))
    {
      case svn_wc_conflict_action_edit:
        action_str = FUNC1("incoming edit");
        break;
      case svn_wc_conflict_action_add:
        action_str = FUNC1("incoming add");
        break;
      case svn_wc_conflict_action_delete:
        action_str = FUNC1("incoming delete");
        break;
      default:
        action_str = FUNC2(
                       pool, FUNC1("incoming %s"),
                       FUNC7(
                         map_conflict_action_xml,
                         FUNC4(conflict)));
        break;
    }
  FUNC0(reason_str && action_str);
  *desc = FUNC2(pool, FUNC1("%s, %s %s"),
                       reason_str, action_str,
                       FUNC3(
                         FUNC6(conflict)));
  return SVN_NO_ERROR;
}