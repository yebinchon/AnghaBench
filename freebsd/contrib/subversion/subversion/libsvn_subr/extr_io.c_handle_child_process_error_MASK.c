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
typedef  int /*<<< orphan*/  errbuf ;
typedef  int /*<<< orphan*/  apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERRFILE_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC3(apr_pool_t *pool, apr_status_t status,
                           const char *desc)
{
  char errbuf[256];
  apr_file_t *errfile;
  void *p;

  /* We can't do anything if we get an error here, so just return. */
  if (FUNC1(&p, ERRFILE_KEY, pool))
    return;
  errfile = p;

  if (errfile)
    /* What we get from APR is in native encoding. */
    FUNC0(errfile, "%s: %s",
                    desc, FUNC2(status, errbuf,
                                       sizeof(errbuf)));
}