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
struct delta_baton {int /*<<< orphan*/  wrapped_baton; int /*<<< orphan*/  (* wrapped_handler ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static svn_error_t *
FUNC3(svn_txdelta_window_t *window, void *baton)
{
  struct delta_baton *dbaton = baton;

  /* Call the wrapped handler first. */
  if (dbaton->wrapped_handler)
    FUNC0(dbaton->wrapped_handler(window, dbaton->wrapped_baton));

  /* We patiently wait for the NULL window marking the end. */
  if (window)
    return SVN_NO_ERROR;

  /* Diff and update blame info. */
  FUNC0(FUNC2(baton));

  return SVN_NO_ERROR;
}