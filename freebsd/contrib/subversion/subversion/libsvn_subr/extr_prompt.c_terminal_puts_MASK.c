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
struct TYPE_3__ {int /*<<< orphan*/  outfd; } ;
typedef  TYPE_1__ terminal_handle_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/ * FUNC3 (char const**,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(const char *string, terminal_handle_t *terminal,
              apr_pool_t *pool)
{
  svn_error_t *err;
  const char *converted;

  err = FUNC3(&converted, string, pool);
  if (err)
    {
      FUNC5(err);
      converted = FUNC4(string, pool);
    }

#ifdef WIN32
  if (!terminal->outfd)
    {
      /* See terminal_open; we're using Console I/O. */
      _cputs(converted);
      return SVN_NO_ERROR;
    }
#endif

  FUNC0(FUNC8(terminal->outfd, converted,
                                 FUNC2(converted), NULL, pool));

  return FUNC6(FUNC7(terminal->outfd, pool));
}