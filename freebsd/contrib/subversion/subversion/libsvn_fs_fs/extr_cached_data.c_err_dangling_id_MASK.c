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
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
struct TYPE_6__ {int /*<<< orphan*/  path; int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_FS_ID_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC3(svn_fs_t *fs, const svn_fs_id_t *id)
{
  svn_string_t *id_str = FUNC2(id, fs->pool);
  return FUNC1
    (SVN_ERR_FS_ID_NOT_FOUND, 0,
     FUNC0("Reference to non-existent node '%s' in filesystem '%s'"),
     id_str->data, fs->path);
}