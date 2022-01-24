#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_9__ {int /*<<< orphan*/  out; } ;
typedef  TYPE_2__ apr_proc_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int /*<<< orphan*/  APR_READ ; 
 int /*<<< orphan*/  APR_WRITE ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SVN_NULL_DEVICE_NAME ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 char const* FUNC1 (int /*<<< orphan*/ *,char*,char const*,char*,char const*,char*,...) ; 
 char* FUNC2 (TYPE_1__*,char) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,char const* const,char const* const*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,TYPE_1__**,char*,scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC12(apr_pool_t *pool)
{
  static const char *const args[3] =
    {
      "/usr/bin/lsb_release",
      "--all",
      NULL
    };

  const char *distributor = NULL;
  const char *description = NULL;
  const char *release = NULL;
  const char *codename = NULL;

  apr_proc_t lsbproc;
  svn_stream_t *lsbinfo;
  svn_error_t *err;

  /* Run /usr/bin/lsb_release --all < /dev/null 2>/dev/null */
  {
    apr_file_t *stdin_handle;
    apr_file_t *stdout_handle;

    err = FUNC6(&stdin_handle, SVN_NULL_DEVICE_NAME,
                           APR_READ, APR_OS_DEFAULT, pool);
    if (!err)
      err = FUNC6(&stdout_handle, SVN_NULL_DEVICE_NAME,
                             APR_WRITE, APR_OS_DEFAULT, pool);
    if (!err)
      err = FUNC7(&lsbproc, NULL, args[0], args, NULL, FALSE,
                              FALSE, stdin_handle,
                              TRUE, NULL,
                              FALSE, stdout_handle,
                              pool);
    if (err)
      {
        FUNC4(err);
        return NULL;
      }
  }

  /* Parse the output and try to populate the  */
  lsbinfo = FUNC10(lsbproc.out, TRUE, pool);
  if (lsbinfo)
    {
      for (;;)
        {
          svn_boolean_t eof = FALSE;
          svn_stringbuf_t *line;
          const char *key;

          err = FUNC11(lsbinfo, &line, "\n", &eof, pool);
          if (err || eof)
            break;

          key = FUNC2(line, ':');
          if (!key)
            continue;

          if (0 == FUNC3(key, "Distributor ID"))
            distributor = line->data;
          else if (0 == FUNC3(key, "Description"))
            description = line->data;
          else if (0 == FUNC3(key, "Release"))
            release = line->data;
          else if (0 == FUNC3(key, "Codename"))
            codename = line->data;
        }
      err = FUNC5(err,
                                     FUNC9(lsbinfo));
      if (err)
        {
          FUNC4(err);
          FUNC0(&lsbproc, SIGKILL);
          return NULL;
        }
    }

  /* Reap the child process */
  err = FUNC8(&lsbproc, "", NULL, NULL, pool);
  if (err)
    {
      FUNC4(err);
      return NULL;
    }

  if (description)
    return FUNC1(pool, "%s%s%s%s", description,
                        (codename ? " (" : ""),
                        (codename ? codename : ""),
                        (codename ? ")" : ""));
  if (distributor)
    return FUNC1(pool, "%s%s%s%s%s%s", distributor,
                        (release ? " " : ""),
                        (release ? release : ""),
                        (codename ? " (" : ""),
                        (codename ? codename : ""),
                        (codename ? ")" : ""));

  return NULL;
}