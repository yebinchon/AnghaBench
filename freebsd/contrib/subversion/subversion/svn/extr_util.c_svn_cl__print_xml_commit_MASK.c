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
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_xml_normal ; 

void
FUNC4(svn_stringbuf_t **sb,
                         svn_revnum_t revision,
                         const char *author,
                         const char *date,
                         apr_pool_t *pool)
{
  /* "<commit ...>" */
  FUNC3(sb, pool, svn_xml_normal, "commit",
                        "revision",
                        FUNC0(pool, "%ld", revision), SVN_VA_NULL);

  /* "<author>xx</author>" */
  if (author)
    FUNC1(sb, pool, "author", author);

  /* "<date>xx</date>" */
  if (date)
    FUNC1(sb, pool, "date", date);

  /* "</commit>" */
  FUNC2(sb, pool, "commit");
}