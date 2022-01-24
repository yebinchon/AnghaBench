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
typedef  int /*<<< orphan*/  svn_error_t ;

/* Variables and functions */
 int DB_VERSION_MAJOR ; 
 int DB_VERSION_MINOR ; 
 int DB_VERSION_PATCH ; 
 int /*<<< orphan*/  SVN_ERR_FS_GENERAL ; 
 int SVN_FS_WANT_DB_MAJOR ; 
 int SVN_FS_WANT_DB_MINOR ; 
 int SVN_FS_WANT_DB_PATCH ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int,int) ; 

__attribute__((used)) static svn_error_t *
FUNC3(void)
{
  int major, minor, patch;

  FUNC1(&major, &minor, &patch);

  /* First, check that we're using a reasonably correct of Berkeley DB. */
  if ((major < SVN_FS_WANT_DB_MAJOR)
      || (major == SVN_FS_WANT_DB_MAJOR && minor < SVN_FS_WANT_DB_MINOR)
      || (major == SVN_FS_WANT_DB_MAJOR && minor == SVN_FS_WANT_DB_MINOR
          && patch < SVN_FS_WANT_DB_PATCH))
    return FUNC2(SVN_ERR_FS_GENERAL, 0,
                             FUNC0("Bad database version: got %d.%d.%d,"
                               " should be at least %d.%d.%d"),
                             major, minor, patch,
                             SVN_FS_WANT_DB_MAJOR,
                             SVN_FS_WANT_DB_MINOR,
                             SVN_FS_WANT_DB_PATCH);

  /* Now, check that the version we're running against is the same as
     the one we compiled with. */
  if (major != DB_VERSION_MAJOR || minor != DB_VERSION_MINOR)
    return FUNC2(SVN_ERR_FS_GENERAL, 0,
                             FUNC0("Bad database version:"
                               " compiled with %d.%d.%d,"
                               " running against %d.%d.%d"),
                             DB_VERSION_MAJOR,
                             DB_VERSION_MINOR,
                             DB_VERSION_PATCH,
                             major, minor, patch);
  return SVN_NO_ERROR;
}