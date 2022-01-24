#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  reason; int /*<<< orphan*/  action; int /*<<< orphan*/  kind; int /*<<< orphan*/  node_kind; int /*<<< orphan*/  local_abspath; } ;
typedef  TYPE_1__ svn_wc_conflict_description2_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  svn_node_file ; 
 int /*<<< orphan*/  svn_wc_conflict_action_edit ; 
 int /*<<< orphan*/  svn_wc_conflict_kind_text ; 
 int /*<<< orphan*/  svn_wc_conflict_reason_edited ; 

svn_wc_conflict_description2_t *
FUNC4(const char *local_abspath,
                                         apr_pool_t *result_pool)
{
  svn_wc_conflict_description2_t *conflict;

  FUNC0(FUNC3(local_abspath));

  conflict = FUNC1(result_pool, sizeof(*conflict));
  conflict->local_abspath = FUNC2(result_pool, local_abspath);
  conflict->node_kind = svn_node_file;
  conflict->kind = svn_wc_conflict_kind_text;
  conflict->action = svn_wc_conflict_action_edit;
  conflict->reason = svn_wc_conflict_reason_edited;
  return conflict;
}