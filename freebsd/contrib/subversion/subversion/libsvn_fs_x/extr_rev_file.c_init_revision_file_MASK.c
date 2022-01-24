#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_5__ {int /*<<< orphan*/  start_revision; int /*<<< orphan*/  is_packed; } ;
struct TYPE_6__ {TYPE_1__ file_info; } ;
typedef  TYPE_2__ svn_fs_x__revision_file_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_fs_x__revision_file_t *
FUNC3(svn_fs_t *fs,
                   svn_revnum_t revision,
                   apr_pool_t *result_pool)
{
  svn_fs_x__revision_file_t *file = FUNC0(fs, result_pool);

  file->file_info.is_packed = FUNC1(fs, revision);
  file->file_info.start_revision = FUNC2(fs, revision);

  return file;
}