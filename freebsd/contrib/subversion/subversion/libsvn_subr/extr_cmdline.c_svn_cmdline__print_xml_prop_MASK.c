#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {char* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
struct TYPE_14__ {char* data; int /*<<< orphan*/  len; } ;
typedef  TYPE_2__ svn_string_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_2__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,char const*,char*,...) ; 
 int /*<<< orphan*/  svn_xml_protect_pcdata ; 

void
FUNC7(svn_stringbuf_t **outstr,
                            const char* propname,
                            svn_string_t *propval,
                            svn_boolean_t inherited_prop,
                            apr_pool_t *pool)
{
  const char *xml_safe;
  const char *encoding = NULL;

  if (*outstr == NULL)
    *outstr = FUNC2(pool);

  if (FUNC4(propval->data, propval->len))
    {
      svn_stringbuf_t *xml_esc = NULL;
      FUNC3(&xml_esc, propval, pool);
      xml_safe = xml_esc->data;
    }
  else
    {
      const svn_string_t *base64ed = FUNC0(propval, TRUE,
                                                               pool);
      encoding = "base64";
      xml_safe = base64ed->data;
    }

  if (encoding)
    FUNC6(
      outstr, pool, svn_xml_protect_pcdata,
      inherited_prop ? "inherited_property" : "property",
      "name", propname,
      "encoding", encoding, SVN_VA_NULL);
  else
    FUNC6(
      outstr, pool, svn_xml_protect_pcdata,
      inherited_prop ? "inherited_property" : "property",
      "name", propname, SVN_VA_NULL);

  FUNC1(*outstr, xml_safe);

  FUNC5(
    outstr, pool,
    inherited_prop ? "inherited_property" : "property");

  return;
}