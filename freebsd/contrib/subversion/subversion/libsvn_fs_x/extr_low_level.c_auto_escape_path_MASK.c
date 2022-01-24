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
typedef  size_t apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 size_t FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const) ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC3(const char *path,
                 apr_pool_t *result_pool)
{
  apr_size_t len = FUNC0(path);
  apr_size_t i;
  const char esc = '\x1b';

  for (i = 0; i < len; ++i)
    if (path[i] < ' ')
      {
        svn_stringbuf_t *escaped = FUNC2(2 * len,
                                                               result_pool);
        for (i = 0; i < len; ++i)
          if (path[i] < ' ')
            {
              FUNC1(escaped, esc);
              FUNC1(escaped, path[i] + 'A' - 1);
            }
          else
            {
              FUNC1(escaped, path[i]);
            }

        return escaped->data;
      }

   return path;
}