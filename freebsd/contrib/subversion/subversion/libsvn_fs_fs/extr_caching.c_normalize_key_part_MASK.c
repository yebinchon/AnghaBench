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
struct TYPE_5__ {char const* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  size_t apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 size_t FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 TYPE_1__* FUNC3 (size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC4(const char *original,
                   apr_pool_t *pool)
{
  apr_size_t i;
  apr_size_t len = FUNC0(original);
  svn_stringbuf_t *normalized = FUNC3(len, pool);

  for (i = 0; i < len; ++i)
    {
      char c = original[i];
      switch (c)
        {
        case ':': FUNC2(normalized, "%_", 2);
                  break;
        case '%': FUNC2(normalized, "%%", 2);
                  break;
        default : FUNC1(normalized, c);
        }
    }

  return normalized->data;
}