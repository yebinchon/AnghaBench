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
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_xml_protect_pcdata ; 

void
FUNC3(svn_stringbuf_t **sb,
                         apr_pool_t *pool,
                         const char *tagname,
                         const char *string)
{
  if (string)
    {
      FUNC2(sb, pool, svn_xml_protect_pcdata,
                            tagname, SVN_VA_NULL);
      FUNC0(sb, string, pool);
      FUNC1(sb, pool, tagname);
    }
}