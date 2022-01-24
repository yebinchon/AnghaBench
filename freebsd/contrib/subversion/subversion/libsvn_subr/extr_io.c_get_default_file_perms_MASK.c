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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int apr_uintptr_t ;
typedef  scalar_t__ apr_uint32_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_3__ {scalar_t__ protection; } ;
typedef  TYPE_1__ apr_finfo_t ;
typedef  scalar_t__ apr_fileperms_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_FINFO_PROT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_io_file_del_none ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ **,char const**,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(apr_fileperms_t *perms,
                       const char *directory,
                       apr_pool_t *scratch_pool)
{
  /* the default permissions as read from the temp folder */
  static apr_fileperms_t default_perms = 0;

  /* Technically, this "racy": Multiple threads may use enter here and
     try to figure out the default permission concurrently. That's fine
     since they will end up with the same results. Even more technical,
     apr_fileperms_t is an atomic type on 32+ bit machines.
   */
  if (default_perms == 0)
    {
      apr_finfo_t finfo;
      apr_file_t *fd;
      const char *fname_base, *fname;
      apr_uint32_t randomish;
      svn_error_t *err;

      /* Get the perms for a newly created file to find out what bits
        should be set.

        Explicitly delete the file because we want this file to be as
        short-lived as possible since its presence means other
        processes may have to try multiple names.

        Using svn_io_open_uniquely_named() here because other tempfile
        creation functions tweak the permission bits of files they create.

        Note that APR pool structures are allocated as the first item
        in their first memory page (with e.g. 4kB granularity), i.e. the
        lower bits tend to be identical between pool instances.  That is
        particularly true for the MMAPed allocator.
      */
      randomish = ((apr_uint32_t)(apr_uintptr_t)scratch_pool
                   + (apr_uint32_t)((apr_uintptr_t)scratch_pool / 4096)
                   + (apr_uint32_t)FUNC2());
      fname_base = FUNC1(scratch_pool, "svn-%08x", randomish);

      FUNC0(FUNC6(&fd, &fname, directory, fname_base,
                                         NULL, svn_io_file_del_none,
                                         scratch_pool, scratch_pool));
      err = FUNC5(&finfo, APR_FINFO_PROT, fd, scratch_pool);
      err = FUNC3(err, FUNC4(fd, scratch_pool));
      err = FUNC3(err, FUNC7(fname, TRUE,
                                                              scratch_pool));
      FUNC0(err);
      *perms = finfo.protection;
      default_perms = finfo.protection;
    }
  else
    *perms = default_perms;

  return SVN_NO_ERROR;
}