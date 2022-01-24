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
struct TYPE_4__ {int /*<<< orphan*/  file_info; } ;
typedef  TYPE_1__ svn_fs_x__revision_file_t ;
typedef  int /*<<< orphan*/  svn_fs_x__rev_file_info_t ;
typedef  int /*<<< orphan*/  svn_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

svn_error_t *
FUNC2(svn_fs_x__rev_file_info_t *info,
                        svn_fs_x__revision_file_t *file)
{
  FUNC0(FUNC1(file));

  *info = file->file_info;
  return SVN_NO_ERROR;
}