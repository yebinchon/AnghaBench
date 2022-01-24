#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_1__ svn_error_t ;

/* Variables and functions */
 TYPE_1__* SVN_NO_ERROR ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,char const*) ; 

svn_error_t *
FUNC1(svn_error_t *child, const char *new_msg)
{
  if (child == SVN_NO_ERROR)
    return SVN_NO_ERROR;

  return FUNC0(child->apr_err,
                          child,
                          new_msg);
}