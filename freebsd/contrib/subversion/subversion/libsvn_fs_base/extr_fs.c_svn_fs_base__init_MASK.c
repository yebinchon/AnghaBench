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
struct TYPE_5__ {scalar_t__ major; } ;
typedef  TYPE_1__ svn_version_t ;
struct TYPE_6__ {char* member_0; int /*<<< orphan*/ * member_1; } ;
typedef  TYPE_2__ svn_version_checklist_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  fs_library_vtable_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_VERSION_MISMATCH ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ SVN_VER_MAJOR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  library_vtable ; 
#define  svn_delta_version 130 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
#define  svn_fs_util__version 129 
#define  svn_subr_version 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_ver_equal ; 

svn_error_t *
FUNC7(const svn_version_t *loader_version,
                  fs_library_vtable_t **vtable, apr_pool_t* common_pool)
{
  static const svn_version_checklist_t checklist[] =
    {
      { "svn_subr",  svn_subr_version },
      { "svn_delta", svn_delta_version },
      { "svn_fs_util", svn_fs_util__version },
      { NULL, NULL }
    };

  /* Simplified version check to make sure we can safely use the
     VTABLE parameter. The FS loader does a more exhaustive check. */
  if (loader_version->major != SVN_VER_MAJOR)
    return FUNC4(SVN_ERR_VERSION_MISMATCH, NULL,
                             FUNC1("Unsupported FS loader version (%d) for bdb"),
                             loader_version->major);
  FUNC0(FUNC6(FUNC2(), checklist, svn_ver_equal));
  FUNC0(FUNC3());
  FUNC0(FUNC5(common_pool));

  *vtable = &library_vtable;
  return SVN_NO_ERROR;
}