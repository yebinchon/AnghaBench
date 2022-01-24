#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_xml_self_closing ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_revnum_t repos_rev,
                        apr_pool_t *pool)
{
  svn_stringbuf_t *sb = FUNC3(pool);

  if (FUNC0(repos_rev))
    {
      const char *repos_rev_str;
      repos_rev_str = FUNC1(pool, "%ld", repos_rev);
      FUNC5(&sb, pool, svn_xml_self_closing, "against",
                            "revision", repos_rev_str, SVN_VA_NULL);
    }

  FUNC4(&sb, pool, "target");

  return FUNC2(sb->data, stdout);
}