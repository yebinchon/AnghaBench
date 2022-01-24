#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {int /*<<< orphan*/  reader; TYPE_2__* lookahead; int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ report_baton_t ;
struct TYPE_8__ {char* path; } ;
typedef  TYPE_2__ path_info_t ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char const*,int) ; 
 char* FUNC4 (char const*,char) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC7(report_baton_t *b, const char **entry, path_info_t **info,
                const char *prefix, apr_pool_t *pool)
{
  apr_size_t plen = FUNC5(prefix);
  const char *relpath, *sep;
  apr_pool_t *subpool;

  if (!FUNC3(b->lookahead, prefix, plen))
    {
      /* No more entries relevant to prefix. */
      *entry = NULL;
      *info = NULL;
    }
  else
    {
      /* Take a look at the prefix-relative part of the path. */
      relpath = b->lookahead->path + (*prefix ? plen + 1 : 0);
      sep = FUNC4(relpath, '/');
      if (sep)
        {
          /* Return the immediate child part; do not advance. */
          *entry = FUNC1(pool, relpath, sep - relpath);
          *info = NULL;
        }
      else
        {
          /* This is an immediate child; return it and advance. */
          *entry = relpath;
          *info = b->lookahead;
          subpool = FUNC6(b->pool);
          FUNC0(FUNC2(&b->lookahead, b->reader, subpool));
        }
    }
  return SVN_NO_ERROR;
}