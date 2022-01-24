#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  apr_err; int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(FILE *stream, const svn_error_t *err, const char *prefix)
{
  char buf[256];
#ifdef SVN_DEBUG
  const char *symbolic_name = svn_error_symbolic_name(err->apr_err);
#endif

#ifdef SVN_DEBUG
  if (symbolic_name)
    svn_error_clear(
      svn_cmdline_fprintf(stream, err->pool, "%swarning: apr_err=%s\n",
                          prefix, symbolic_name));
#endif

  FUNC4(FUNC2
                  (stream, err->pool,
                   FUNC0("%swarning: W%06d: %s\n"),
                   prefix, err->apr_err,
                   FUNC3(err, buf, sizeof(buf))));
  FUNC1(stream);
}