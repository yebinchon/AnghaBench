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
struct TYPE_4__ {char* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_BAD_PROPERTY_VALUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 TYPE_1__* FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

void
FUNC8(const char *propname, const char *propval,
                               apr_pool_t *pool)
{
  svn_stringbuf_t *propbuf;

  if (!FUNC5(propname))
    return;

  propbuf = FUNC6(propval, pool);
  FUNC7(propbuf);

  if (propbuf->data[0] == '\0'
      || FUNC1(propbuf->data, "0") == 0
      || FUNC1(propbuf->data, "no") == 0
      || FUNC1(propbuf->data, "off") == 0
      || FUNC1(propbuf->data, "false") == 0)
    {
      svn_error_t *err = FUNC3
        (SVN_ERR_BAD_PROPERTY_VALUE, NULL,
         FUNC0("To turn off the %s property, use 'svn propdel';\n"
           "setting the property to '%s' will not turn it off."),
           propname, propval);
      FUNC4(stderr, err, "svn: ");
      FUNC2(err);
    }
}