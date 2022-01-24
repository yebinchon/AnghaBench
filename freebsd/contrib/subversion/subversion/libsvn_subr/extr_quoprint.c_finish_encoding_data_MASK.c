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
struct encode_baton {scalar_t__ linelen; int /*<<< orphan*/  pool; int /*<<< orphan*/  output; } ;
typedef  int apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int*) ; 

__attribute__((used)) static svn_error_t *
FUNC3(void *baton)
{
  struct encode_baton *eb = baton;
  svn_error_t *err = SVN_NO_ERROR;
  apr_size_t len;

  /* Terminate the current output line if it's not empty.  */
  if (eb->linelen > 0)
    {
      len = 2;
      err = FUNC2(eb->output, "=\n", &len);
    }

  /* Pass on the close request and clean up the baton.  */
  if (err == SVN_NO_ERROR)
    err = FUNC1(eb->output);
  FUNC0(eb->pool);
  return err;
}