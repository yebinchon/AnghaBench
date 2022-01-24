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
struct TYPE_2__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  result_checksum; int /*<<< orphan*/  node; int /*<<< orphan*/  interpreter_baton; int /*<<< orphan*/  (* interpreter ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ txdelta_baton_t ;
typedef  int /*<<< orphan*/  svn_txdelta_window_t ;
typedef  int /*<<< orphan*/  svn_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC3(svn_txdelta_window_t *window, void *baton)
{
  txdelta_baton_t *tb = (txdelta_baton_t *) baton;

  /* Send the window right through to the custom window interpreter.
     In theory, the interpreter will then write more data to
     cb->target_string. */
  FUNC0(tb->interpreter(window, tb->interpreter_baton));

  /* Is the window NULL?  If so, we're done.  The stream has already been
     closed by the interpreter. */
  if (! window)
    FUNC0(FUNC2(tb->node, tb->result_checksum,
                                          tb->pool));

  return SVN_NO_ERROR;
}