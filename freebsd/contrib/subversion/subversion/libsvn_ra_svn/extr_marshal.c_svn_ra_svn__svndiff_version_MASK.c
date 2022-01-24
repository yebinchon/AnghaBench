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
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_RA_SVN_CAP_SVNDIFF1 ; 
 int /*<<< orphan*/  SVN_RA_SVN_CAP_SVNDIFF2_ACCEPTED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC2(svn_ra_svn_conn_t *conn)
{
  /* If we don't want to use compression, use the non-compressing
   * "version 0" implementation. */
  if (FUNC0(conn) <= 0)
    return 0;

  /* Prefer SVNDIFF2 over SVNDIFF1. */
  if (FUNC1(conn, SVN_RA_SVN_CAP_SVNDIFF2_ACCEPTED))
    return 2;
  if (FUNC1(conn, SVN_RA_SVN_CAP_SVNDIFF1))
    return 1;

  /* The connection does not support SVNDIFF1/2; default to "version 0". */
  return 0;
}