#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int minor; } ;
typedef  TYPE_1__ svn_version_t ;
typedef  int /*<<< orphan*/  svn_mutex__t ;
struct TYPE_11__ {scalar_t__ fsap_data; int /*<<< orphan*/  path; scalar_t__ config; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_12__ {int format; } ;
typedef  TYPE_3__ base_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FORMAT_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SVN_FS_BASE__FORMAT_NUMBER ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(svn_fs_t *fs,
            const char *path,
            svn_mutex__t *common_pool_lock,
            apr_pool_t *scratch_pool,
            apr_pool_t *common_pool)
{
  int format = SVN_FS_BASE__FORMAT_NUMBER;
  svn_error_t *svn_err;

  /* See if compatibility with older versions was explicitly requested. */
  if (fs->config)
    {
      svn_version_t *compatible_version;
      FUNC0(FUNC7(&compatible_version, fs->config,
                                         scratch_pool));

      /* select format number */
      switch(compatible_version->minor)
        {
          case 0:
          case 1:
          case 2:
          case 3: format = 1;
                  break;

          case 4: format = 2;
                  break;

          case 5: format = 3;
                  break;

          default:format = SVN_FS_BASE__FORMAT_NUMBER;
        }
    }

  /* Create the environment and databases. */
  svn_err = FUNC2(fs, TRUE, format, path);
  if (svn_err) goto error;

  /* Initialize the DAG subsystem. */
  svn_err = FUNC8(fs);
  if (svn_err) goto error;

  /* This filesystem is ready.  Stamp it with a format number. */
  svn_err = FUNC9(FUNC4(fs->path, FORMAT_FILE,
                                                      scratch_pool),
                                      format, scratch_pool);
  if (svn_err) goto error;

  ((base_fs_data_t *) fs->fsap_data)->format = format;

  FUNC0(FUNC3(fs, scratch_pool));
  return SVN_NO_ERROR;

error:
  return FUNC5(svn_err,
                                  FUNC6(FUNC1(fs)));
}