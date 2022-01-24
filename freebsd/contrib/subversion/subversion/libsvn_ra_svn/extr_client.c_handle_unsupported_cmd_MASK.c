#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_RA_NOT_IMPLEMENTED ; 
 scalar_t__ SVN_ERR_RA_SVN_UNKNOWN_CMD ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *FUNC2(svn_error_t *err,
                                           const char *msg)
{
  if (err && err->apr_err == SVN_ERR_RA_SVN_UNKNOWN_CMD)
    return FUNC1(SVN_ERR_RA_NOT_IMPLEMENTED, err,
                            FUNC0(msg));
  return err;
}