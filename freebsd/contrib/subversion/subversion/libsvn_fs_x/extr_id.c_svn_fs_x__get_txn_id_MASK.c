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
typedef  int /*<<< orphan*/  svn_fs_x__change_set_t ;
typedef  scalar_t__ apr_int64_t ;

/* Variables and functions */
 scalar_t__ SVN_FS_X__INVALID_CHANGE_SET ; 
 scalar_t__ SVN_FS_X__INVALID_TXN_ID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

apr_int64_t
FUNC1(svn_fs_x__change_set_t change_set)
{
  return FUNC0(change_set)
       ? -change_set + SVN_FS_X__INVALID_CHANGE_SET -1
       : SVN_FS_X__INVALID_TXN_ID;
}