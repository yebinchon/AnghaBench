#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_log_message_receiver_t ;
typedef  int /*<<< orphan*/  svn_log_entry_receiver_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;
struct TYPE_2__ {int /*<<< orphan*/ * (* get_log ) (void*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 TYPE_1__ VTBL ; 
 int /*<<< orphan*/ * FUNC0 (void*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *FUNC3(void *session_baton,
                                   const apr_array_header_t *paths,
                                   svn_revnum_t start,
                                   svn_revnum_t end,
                                   svn_boolean_t discover_changed_paths,
                                   svn_boolean_t strict_node_history,
                                   svn_log_message_receiver_t receiver,
                                   void *receiver_baton,
                                   apr_pool_t *pool)
{
  svn_log_entry_receiver_t receiver2;
  void *receiver2_baton;

  FUNC2(&receiver2, &receiver2_baton,
                               receiver, receiver_baton,
                               pool);

  return VTBL.get_log(session_baton, paths, start, end, 0, /* limit */
                      discover_changed_paths, strict_node_history,
                      FALSE, /* include_merged_revisions */
                      FUNC1(pool), /* revprops */
                      receiver2, receiver2_baton, pool);
}