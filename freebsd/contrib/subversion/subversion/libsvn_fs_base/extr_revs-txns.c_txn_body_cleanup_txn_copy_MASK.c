#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ trail_t ;
struct TYPE_12__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;

/* Variables and functions */
 scalar_t__ SVN_ERR_FS_NO_SUCH_COPY ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,char const*,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC3(void *baton, trail_t *trail)
{
  const char *copy_id = *(const char **)baton;
  svn_error_t *err = FUNC2(trail->fs, copy_id, trail,
                                             trail->pool);

  /* Copy doesn't exist?  No sweat. */
  if (err && (err->apr_err == SVN_ERR_FS_NO_SUCH_COPY))
    {
      FUNC0(err);
      err = SVN_NO_ERROR;
    }
  return FUNC1(err);
}