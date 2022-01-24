#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* member_0; int /*<<< orphan*/ * member_1; } ;
typedef  TYPE_1__ svn_version_checklist_t ;
typedef  int /*<<< orphan*/  svn_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  my_version ; 
#define  svn_delta_version 132 
#define  svn_fs_version 131 
#define  svn_ra_svn_version 130 
#define  svn_repos_version 129 
#define  svn_subr_version 128 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_ver_equal ; 

__attribute__((used)) static svn_error_t *
FUNC2(void)
{
  static const svn_version_checklist_t checklist[] =
    {
      { "svn_subr",  svn_subr_version },
      { "svn_repos", svn_repos_version },
      { "svn_fs",    svn_fs_version },
      { "svn_delta", svn_delta_version },
      { "svn_ra_svn", svn_ra_svn_version },
      { NULL, NULL }
    };
  FUNC0(my_version);

  return FUNC1(&my_version, checklist, svn_ver_equal);
}