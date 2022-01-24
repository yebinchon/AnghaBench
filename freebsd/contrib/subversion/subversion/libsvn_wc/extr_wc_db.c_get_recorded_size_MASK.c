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
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_filesize_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_INVALID_FILESIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static svn_filesize_t
FUNC2(svn_sqlite__stmt_t *stmt, int slot)
{
  if (FUNC1(stmt, slot))
    return SVN_INVALID_FILESIZE;
  return FUNC0(stmt, slot);
}