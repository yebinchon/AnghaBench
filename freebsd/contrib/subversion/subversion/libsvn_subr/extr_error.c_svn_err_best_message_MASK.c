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
struct TYPE_4__ {char const* message; int /*<<< orphan*/  apr_err; struct TYPE_4__* child; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_size_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__ const*) ; 
 char const* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

const char *
FUNC2(const svn_error_t *err, char *buf, apr_size_t bufsize)
{
  /* Skip over any trace records.  */
  while (FUNC0(err))
    err = err->child;
  if (err->message)
    return err->message;
  else
    return FUNC1(err->apr_err, buf, bufsize);
}