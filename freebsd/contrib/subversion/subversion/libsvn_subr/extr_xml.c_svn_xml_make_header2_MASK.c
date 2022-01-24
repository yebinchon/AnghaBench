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
 char* FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(svn_stringbuf_t **str, const char *encoding,
                     apr_pool_t *pool)
{

  if (*str == NULL)
    *str = FUNC2(pool);
  FUNC1(*str, "<?xml version=\"1.0\"");
  if (encoding)
    {
      encoding = FUNC0(pool, " encoding=\"%s\"", encoding);
      FUNC1(*str, encoding);
    }
  FUNC1(*str, "?>\n");
}