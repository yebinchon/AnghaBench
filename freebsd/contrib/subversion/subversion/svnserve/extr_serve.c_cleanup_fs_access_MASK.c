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
struct TYPE_4__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
struct cleanup_fs_access_baton {int /*<<< orphan*/  fs; } ;
typedef  int /*<<< orphan*/  apr_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static apr_status_t FUNC2(void *data)
{
  svn_error_t *serr;
  struct cleanup_fs_access_baton *baton = data;

  serr = FUNC1(baton->fs, NULL);
  if (serr)
    {
      apr_status_t apr_err = serr->apr_err;
      FUNC0(serr);
      return apr_err;
    }

  return APR_SUCCESS;
}