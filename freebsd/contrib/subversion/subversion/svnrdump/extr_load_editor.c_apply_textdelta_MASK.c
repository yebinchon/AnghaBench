#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_txdelta_window_handler_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct svn_delta_editor_t {int /*<<< orphan*/  (* apply_textdelta ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ;} ;
struct node_baton {int /*<<< orphan*/  base_checksum; int /*<<< orphan*/  file_baton; TYPE_2__* rb; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_4__ {int /*<<< orphan*/ * pool; TYPE_1__* pb; } ;
struct TYPE_3__ {struct svn_delta_editor_t* commit_editor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 

__attribute__((used)) static svn_error_t *
FUNC2(svn_txdelta_window_handler_t *handler,
                void **handler_baton,
                void *node_baton)
{
  struct node_baton *nb = node_baton;
  const struct svn_delta_editor_t *commit_editor = nb->rb->pb->commit_editor;
  apr_pool_t *pool = nb->rb->pool;

  FUNC0(commit_editor->apply_textdelta(nb->file_baton, nb->base_checksum,
                                         pool, handler, handler_baton));

  return SVN_NO_ERROR;
}