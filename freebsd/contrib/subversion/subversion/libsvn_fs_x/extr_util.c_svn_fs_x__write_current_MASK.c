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
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int APR_BUFFERED ; 
 int APR_CREATE ; 
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int APR_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC10(svn_fs_t *fs,
                        svn_revnum_t rev,
                        apr_pool_t *scratch_pool)
{
  char *buf;
  const char *tmp_name, *name;
  apr_file_t *file;

  /* Now we can just write out this line. */
  buf = FUNC1(scratch_pool, "%ld\n", rev);

  name = FUNC3(fs, scratch_pool);
  tmp_name = FUNC4(fs, scratch_pool);

  FUNC0(FUNC7(&file, tmp_name,
                           APR_WRITE | APR_CREATE | APR_BUFFERED,
                           APR_OS_DEFAULT, scratch_pool));
  FUNC0(FUNC9(file, buf, FUNC2(buf), NULL,
                                 scratch_pool));
  FUNC0(FUNC6(file, scratch_pool));

  /* Copying permissions is a no-op on WIN32. */
  FUNC0(FUNC5(name, tmp_name, scratch_pool));

  /* Move the file into place. */
  FUNC0(FUNC8(tmp_name, name, TRUE, scratch_pool));

  return SVN_NO_ERROR;
}