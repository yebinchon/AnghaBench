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
typedef  int /*<<< orphan*/  svn_txdelta_window_handler_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct file_baton_t {int /*<<< orphan*/  pool; int /*<<< orphan*/  local_abspath; int /*<<< orphan*/  digest; scalar_t__ writing; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 

__attribute__((used)) static svn_error_t *
FUNC5(void *file_baton,
               const char *base_checksum,
               apr_pool_t *result_pool,
               svn_txdelta_window_handler_t *handler,
               void **handler_baton)
{
  struct file_baton_t *fb = file_baton;
  svn_stream_t *target;

  FUNC1(! fb->writing);

  FUNC0(FUNC3(&target, fb->local_abspath, fb->pool,
                                   fb->pool));

  fb->writing = TRUE;
  FUNC4(FUNC2(fb->pool) /* source */,
                    target,
                    fb->digest,
                    fb->local_abspath,
                    fb->pool,
                    /* Provide the handler directly */
                    handler, handler_baton);

  return SVN_NO_ERROR;
}