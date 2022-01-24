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
typedef  enum svn_xml_open_tag_style { ____Placeholder_svn_xml_open_tag_style } svn_xml_open_tag_style ;
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const**,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,void*,int /*<<< orphan*/ *) ; 
 int svn_xml_protect_pcdata ; 
 int svn_xml_self_closing ; 

void
FUNC9(svn_stringbuf_t **str,
                           apr_pool_t *pool,
                           enum svn_xml_open_tag_style style,
                           const char *tagname,
                           apr_hash_t *attributes)
{
  apr_hash_index_t *hi;
  apr_size_t est_size = FUNC5(tagname) + 4 + FUNC0(attributes) * 30;

  if (*str == NULL)
    *str = FUNC7(est_size, pool);

  FUNC6(*str, "<");
  FUNC6(*str, tagname);

  for (hi = FUNC1(pool, attributes); hi; hi = FUNC2(hi))
    {
      const void *key;
      void *val;

      FUNC3(hi, &key, NULL, &val);
      FUNC4(val != NULL);

      FUNC6(*str, "\n   ");
      FUNC6(*str, key);
      FUNC6(*str, "=\"");
      FUNC8(str, val, pool);
      FUNC6(*str, "\"");
    }

  if (style == svn_xml_self_closing)
    FUNC6(*str, "/");
  FUNC6(*str, ">");
  if (style != svn_xml_protect_pcdata)
    FUNC6(*str, "\n");
}