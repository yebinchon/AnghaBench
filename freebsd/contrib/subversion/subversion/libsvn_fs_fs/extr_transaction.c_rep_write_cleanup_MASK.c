#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
struct rep_write_baton {int /*<<< orphan*/  scratch_pool; int /*<<< orphan*/  lockcookie; TYPE_1__* noderev; int /*<<< orphan*/  fs; int /*<<< orphan*/  file; int /*<<< orphan*/  rep_offset; } ;
typedef  int /*<<< orphan*/  apr_status_t ;
struct TYPE_7__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static apr_status_t
FUNC6(void *data)
{
  struct rep_write_baton *b = data;
  svn_error_t *err;

  /* Truncate and close the protorevfile. */
  err = FUNC4(b->file, b->rep_offset, b->scratch_pool);
  err = FUNC1(err, FUNC3(b->file,
                                                        b->scratch_pool));

  /* Remove our lock regardless of any preceding errors so that the
     being_written flag is always removed and stays consistent with the
     file lock which will be removed no matter what since the pool is
     going away. */
  err = FUNC1(err,
                                 FUNC5(b->fs,
                                     FUNC2(b->noderev->id),
                                     b->lockcookie, b->scratch_pool));
  if (err)
    {
      apr_status_t rc = err->apr_err;
      FUNC0(err);
      return rc;
    }

  return APR_SUCCESS;
}