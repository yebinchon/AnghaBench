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
struct TYPE_4__ {char const* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 TYPE_1__* FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char const**,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(const char **prop_name, const char *header,
                const char *indicator, apr_pool_t *result_pool)
{
  FUNC0(FUNC5(prop_name,
                                  header + FUNC1(indicator),
                                  result_pool));
  if (**prop_name == '\0')
    *prop_name = NULL;
  else if (! FUNC2(*prop_name))
    {
      svn_stringbuf_t *buf = FUNC3(*prop_name, result_pool);
      FUNC4(buf);
      *prop_name = (FUNC2(buf->data) ? buf->data : NULL);
    }

  return SVN_NO_ERROR;
}