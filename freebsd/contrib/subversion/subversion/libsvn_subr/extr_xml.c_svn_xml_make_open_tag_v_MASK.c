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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
typedef  enum svn_xml_open_tag_style { ____Placeholder_svn_xml_open_tag_style } svn_xml_open_tag_style ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int,char const*,int /*<<< orphan*/ *) ; 

void
FUNC4(svn_stringbuf_t **str,
                        apr_pool_t *pool,
                        enum svn_xml_open_tag_style style,
                        const char *tagname,
                        va_list ap)
{
  apr_pool_t *subpool = FUNC0(pool);
  apr_hash_t *ht = FUNC2(ap, subpool);

  FUNC3(str, pool, style, tagname, ht);
  FUNC1(subpool);
}