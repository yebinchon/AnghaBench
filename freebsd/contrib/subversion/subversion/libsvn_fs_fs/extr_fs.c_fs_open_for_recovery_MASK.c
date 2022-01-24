#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_mutex__t ;
struct TYPE_10__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static svn_error_t *
FUNC14(svn_fs_t *fs,
                     const char *path,
                     svn_mutex__t *common_pool_lock,
                     apr_pool_t *pool,
                     apr_pool_t *common_pool)
{
  svn_error_t * err;
  svn_revnum_t youngest_rev;
  apr_pool_t * subpool = FUNC11(pool);

  /* Recovery for FSFS is currently limited to recreating the 'current'
     file from the latest revision. */

  /* The only thing we have to watch out for is that the 'current' file
     might not exist or contain garbage.  So we'll try to read it here
     and provide or replace the existing file if we couldn't read it.
     (We'll also need it to exist later anyway as a source for the new
     file's permissions). */

  /* Use a partly-filled fs pointer first to create 'current'. */
  fs->path = FUNC1(fs->pool, path);

  FUNC0(FUNC3(fs));

  /* Figure out the repo format and check that we can even handle it. */
  FUNC0(FUNC6(fs, subpool));

  /* Now, read 'current' and try to patch it if necessary. */
  err = FUNC8(&youngest_rev, fs, subpool);
  if (err)
    {
      const char *file_path;

      /* 'current' file is missing or contains garbage.  Since we are trying
       * to recover from whatever problem there is, being picky about the
       * error code here won't do us much good.  If there is a persistent
       * problem that we can't fix, it will show up when we try rewrite the
       * file a few lines further below and we will report the failure back
       * to the caller.
       *
       * Start recovery with HEAD = 0. */
      FUNC4(err);
      file_path = FUNC5(fs, subpool);

      /* Best effort to ensure the file exists and is valid.
       * This may fail for r/o filesystems etc. */
      FUNC0(FUNC10(file_path, TRUE, subpool));
      FUNC0(FUNC9(file_path, subpool));
      FUNC0(FUNC7(fs, 0, 1, 1, subpool));
    }

  FUNC13(fs);
  FUNC12(subpool);

  /* Now open the filesystem properly by calling the vtable method directly. */
  return FUNC2(fs, path, common_pool_lock, pool, common_pool);
}