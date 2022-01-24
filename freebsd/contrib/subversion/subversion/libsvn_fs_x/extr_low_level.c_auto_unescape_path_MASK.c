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
 scalar_t__ FUNC0 (char const*,char const) ; 
 size_t FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const) ; 
 TYPE_1__* FUNC3 (size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC4(const char *path,
                   apr_pool_t *result_pool)
{
  const char esc = '\x1b';
  if (FUNC0(path, esc))
    {
      apr_size_t len = FUNC1(path);
      apr_size_t i;

      svn_stringbuf_t *unescaped = FUNC3(len,
                                                               result_pool);
      for (i = 0; i < len; ++i)
        if (path[i] == esc)
          FUNC2(unescaped, path[++i] + 1 - 'A');
        else
          FUNC2(unescaped, path[i]);

      return unescaped->data;
    }

   return path;
}