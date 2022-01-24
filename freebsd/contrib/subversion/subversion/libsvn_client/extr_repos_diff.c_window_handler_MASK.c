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
typedef  int /*<<< orphan*/  svn_txdelta_window_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct file_baton {int /*<<< orphan*/  pool; int /*<<< orphan*/  result_digest; int /*<<< orphan*/  result_md5_checksum; int /*<<< orphan*/  apply_baton; int /*<<< orphan*/  (* apply_handler ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC3(svn_txdelta_window_t *window,
               void *window_baton)
{
  struct file_baton *fb = window_baton;

  FUNC0(fb->apply_handler(window, fb->apply_baton));

  if (!window)
    {
      fb->result_md5_checksum = FUNC2(
                                        fb->result_digest,
                                        fb->pool);
    }

  return SVN_NO_ERROR;
}