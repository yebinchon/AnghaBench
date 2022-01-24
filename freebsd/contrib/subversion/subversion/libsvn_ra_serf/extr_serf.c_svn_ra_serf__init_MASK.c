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
typedef  int /*<<< orphan*/  svn_ra__vtable_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int SERF_MAJOR_VERSION ; 
 int SERF_MINOR_VERSION ; 
 int /*<<< orphan*/  SERF_PATCH_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_VERSION_MISMATCH ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ SVN_VER_MAJOR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int*) ; 
 int /*<<< orphan*/  serf_vtable ; 
#define  svn_delta_version 129 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,...) ; 
#define  svn_subr_version 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_ver_equal ; 

svn_error_t *
FUNC6(const svn_version_t *loader_version,
                  const svn_ra__vtable_t **vtable,
                  apr_pool_t *pool)
{
  static const svn_version_checklist_t checklist[] =
    {
      { "svn_subr",  svn_subr_version },
      { "svn_delta", svn_delta_version },
      { NULL, NULL }
    };
  int serf_major;
  int serf_minor;
  int serf_patch;

  FUNC0(FUNC5(FUNC2(), checklist, svn_ver_equal));

  /* Simplified version check to make sure we can safely use the
     VTABLE parameter. The RA loader does a more exhaustive check. */
  if (loader_version->major != SVN_VER_MAJOR)
    {
      return FUNC4(
         SVN_ERR_VERSION_MISMATCH, NULL,
         FUNC1("Unsupported RA loader version (%d) for ra_serf"),
         loader_version->major);
    }

  /* Make sure that we have loaded a compatible library: the MAJOR must
     match, and the minor must be at *least* what we compiled against.
     The patch level is simply ignored.  */
  FUNC3(&serf_major, &serf_minor, &serf_patch);
  if (serf_major != SERF_MAJOR_VERSION
      || serf_minor < SERF_MINOR_VERSION)
    {
      return FUNC4(
         /* ### should return a unique error  */
         SVN_ERR_VERSION_MISMATCH, NULL,
         FUNC1("ra_serf was compiled for serf %d.%d.%d but loaded "
           "an incompatible %d.%d.%d library"),
         SERF_MAJOR_VERSION, SERF_MINOR_VERSION, SERF_PATCH_VERSION,
         serf_major, serf_minor, serf_patch);
    }

  *vtable = &serf_vtable;

  return SVN_NO_ERROR;
}