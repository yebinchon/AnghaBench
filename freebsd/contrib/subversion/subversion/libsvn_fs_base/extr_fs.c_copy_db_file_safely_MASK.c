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
typedef  int /*<<< orphan*/  u_int32_t ;
struct TYPE_10__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int APR_CREATE ; 
 int APR_LARGEFILE ; 
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int APR_READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int APR_WRITE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* SVN_NO_ERROR ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ **,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(const char *src_dir,
                    const char *dst_dir,
                    const char *filename,
                    u_int32_t chunksize,
                    svn_boolean_t allow_missing,
                    apr_pool_t *pool)
{
  apr_file_t *s = NULL, *d = NULL;  /* init to null important for APR */
  const char *file_src_path = FUNC4(src_dir, filename, pool);
  const char *file_dst_path = FUNC4(dst_dir, filename, pool);
  svn_error_t *err;
  char *buf;

  /* Open source file.  If it's missing and that's allowed, there's
     nothing more to do here. */
  err = FUNC7(&s, file_src_path,
                         (APR_READ | APR_LARGEFILE),
                         APR_OS_DEFAULT, pool);
  if (err && FUNC0(err->apr_err) && allow_missing)
    {
      FUNC5(err);
      return SVN_NO_ERROR;
    }
  FUNC2(err);

  /* Open destination file. */
  FUNC2(FUNC7(&d, file_dst_path, (APR_WRITE | APR_CREATE |
                                               APR_LARGEFILE),
                           APR_OS_DEFAULT, pool));

  /* Allocate our read/write buffer. */
  buf = FUNC3(pool, chunksize);

  /* Copy bytes till the cows come home. */
  while (1)
    {
      apr_size_t bytes_this_time = chunksize;
      svn_error_t *read_err, *write_err;

      /* Read 'em. */
      if ((read_err = FUNC8(s, buf, &bytes_this_time, pool)))
        {
          if (FUNC1(read_err->apr_err))
            FUNC5(read_err);
          else
            {
              FUNC5(FUNC6(s, pool));
              FUNC5(FUNC6(d, pool));
              return read_err;
            }
        }

      /* Write 'em. */
      if ((write_err = FUNC9(d, buf, bytes_this_time, NULL,
                                              pool)))
        {
          FUNC5(FUNC6(s, pool));
          FUNC5(FUNC6(d, pool));
          return write_err;
        }

      /* read_err is either NULL, or a dangling pointer - but it is only a
         dangling pointer if it used to be an EOF error. */
      if (read_err)
        {
          FUNC2(FUNC6(s, pool));
          FUNC2(FUNC6(d, pool));
          break;  /* got EOF on read, all files closed, all done. */
        }
    }

  return SVN_NO_ERROR;
}