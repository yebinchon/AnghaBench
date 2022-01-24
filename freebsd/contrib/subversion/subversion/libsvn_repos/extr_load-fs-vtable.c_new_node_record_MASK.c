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
struct TYPE_4__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ svn_repos_notify_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct revision_baton {scalar_t__ rev; int /*<<< orphan*/  txn_root; scalar_t__ skipped; struct parse_baton* pb; } ;
struct parse_baton {int /*<<< orphan*/  notify_pool; int /*<<< orphan*/  notify_baton; int /*<<< orphan*/  (* notify_func ) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ;} ;
struct node_baton {int action; int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_STREAM_MALFORMED_DATA ; 
 int /*<<< orphan*/  SVN_ERR_STREAM_UNRECOGNIZED_DATA ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct node_baton**,int /*<<< orphan*/ *,struct revision_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct node_baton*,struct revision_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
#define  svn_node_action_add 131 
#define  svn_node_action_change 130 
#define  svn_node_action_delete 129 
#define  svn_node_action_replace 128 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_repos_notify_load_node_start ; 

__attribute__((used)) static svn_error_t *
FUNC10(void **node_baton,
                apr_hash_t *headers,
                void *revision_baton,
                apr_pool_t *pool)
{
  struct revision_baton *rb = revision_baton;
  struct parse_baton *pb = rb->pb;
  struct node_baton *nb;

  if (rb->rev == 0)
    return FUNC5(SVN_ERR_STREAM_MALFORMED_DATA, NULL,
                            FUNC1("Malformed dumpstream: "
                              "Revision 0 must not contain node records"));

  FUNC0(FUNC2(&nb, headers, rb, pool));

  /* If we're skipping this revision, we're done here. */
  if (rb->skipped)
    {
      *node_baton = nb;
      return SVN_NO_ERROR;
    }

  /* Make sure we have an action we recognize. */
  if (nb->action < svn_node_action_change
        || nb->action > svn_node_action_replace)
      return FUNC6(SVN_ERR_STREAM_UNRECOGNIZED_DATA, NULL,
                               FUNC1("Unrecognized node-action on node '%s'"),
                               nb->path);

  if (pb->notify_func)
    {
      /* ### TODO: Use proper scratch pool instead of pb->notify_pool */
      svn_repos_notify_t *notify = FUNC9(
                                        svn_repos_notify_load_node_start,
                                        pb->notify_pool);

      notify->path = nb->path;
      pb->notify_func(pb->notify_baton, notify, pb->notify_pool);
      FUNC8(pb->notify_pool);
    }

  switch (nb->action)
    {
    case svn_node_action_change:
      break;

    case svn_node_action_delete:
      FUNC0(FUNC7(rb->txn_root, nb->path, pool));
      break;

    case svn_node_action_add:
      FUNC0(FUNC3(nb, rb, pool));
      break;

    case svn_node_action_replace:
      FUNC0(FUNC7(rb->txn_root, nb->path, pool));
      FUNC0(FUNC3(nb, rb, pool));
      break;
    }

  *node_baton = nb;
  return SVN_NO_ERROR;
}