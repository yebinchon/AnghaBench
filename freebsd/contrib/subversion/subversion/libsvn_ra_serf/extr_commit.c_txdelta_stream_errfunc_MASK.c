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
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_2__ {int /*<<< orphan*/  err; } ;
typedef  TYPE_1__ open_txdelta_baton_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(void *baton, svn_error_t *err)
{
  open_txdelta_baton_t *b = baton;

  /* Remember extended error info from the stream bucket.  Note that
   * theoretically this errfunc could be called multiple times -- say,
   * if the request gets restarted after an error.  Compose the errors
   * so we don't leak one of them if this happens. */
  b->err = FUNC0(b->err, FUNC1(err));
}