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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_xml_normal ; 

svn_error_t *
FUNC4(const char *tagname,
                         apr_pool_t *pool)
{
  svn_stringbuf_t *sb = FUNC1(pool);

  /* <?xml version="1.0" encoding="UTF-8"?> */
  FUNC2(&sb, "UTF-8", pool);

  /* "<TAGNAME>" */
  FUNC3(&sb, pool, svn_xml_normal, tagname, SVN_VA_NULL);

  return FUNC0(sb->data, stdout);
}