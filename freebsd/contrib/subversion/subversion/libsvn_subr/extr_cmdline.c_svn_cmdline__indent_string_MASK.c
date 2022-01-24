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
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char* FUNC0 (char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 

const char *
FUNC3(const char *str,
                           const char *indent,
                           apr_pool_t *pool)
{
  svn_stringbuf_t *out = FUNC2(pool);
  const char *line;

  while ((line = FUNC0(&str, pool)))
    {
      FUNC1(out, indent);
      FUNC1(out, line);
    }
  return out->data;
}