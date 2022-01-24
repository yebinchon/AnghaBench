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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_CANCELLED ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ cancelled ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC3(void *baton)
{
  /* Cancel baton should be always NULL in command line client. */
  FUNC0(baton == NULL);
  if (cancelled)
    return FUNC2(SVN_ERR_CANCELLED, NULL, FUNC1("Caught signal"));
  else
    return SVN_NO_ERROR;
}