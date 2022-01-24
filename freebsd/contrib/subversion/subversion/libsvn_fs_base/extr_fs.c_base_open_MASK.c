#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_mutex__t ;
struct TYPE_16__ {scalar_t__ fsap_data; } ;
typedef  TYPE_1__ svn_fs_t ;
struct TYPE_17__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_18__ {int format; } ;
typedef  TYPE_3__ base_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FORMAT_FILE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_2__* FUNC4 (TYPE_1__*,scalar_t__,int,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 TYPE_2__* FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(svn_fs_t *fs,
          const char *path,
          svn_mutex__t *common_pool_lock,
          apr_pool_t *scratch_pool,
          apr_pool_t *common_pool)
{
  int format;
  svn_error_t *svn_err;
  svn_boolean_t write_format_file = FALSE;

  /* Read the FS format number. */
  svn_err = FUNC10(&format,
                                     FUNC6(path, FORMAT_FILE,
                                                     scratch_pool),
                                     scratch_pool);
  if (svn_err && FUNC0(svn_err->apr_err))
    {
      /* Pre-1.2 filesystems did not have a format file (you could say
         they were format "0"), so they get upgraded on the fly.
         However, we stopped "upgrading on the fly" in 1.5, so older
         filesystems should only be bumped to 1.3, which is format "1". */
      FUNC7(svn_err);
      svn_err = SVN_NO_ERROR;
      format = 1;
      write_format_file = TRUE;
    }
  else if (svn_err)
    goto error;

  /* Create the environment and databases. */
  svn_err = FUNC4(fs, FALSE, format, path);
  if (svn_err) goto error;

  ((base_fs_data_t *) fs->fsap_data)->format = format;
  FUNC1(FUNC2(format));

  /* If we lack a format file, write one. */
  if (write_format_file)
    {
      svn_err = FUNC11(FUNC6(path, FORMAT_FILE,
                                                        scratch_pool),
                                          format, scratch_pool);
      if (svn_err) goto error;
    }

  FUNC1(FUNC5(fs, scratch_pool));
  return SVN_NO_ERROR;

 error:
  return FUNC8(svn_err,
                                  FUNC9(FUNC3(fs)));
}