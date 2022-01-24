#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t len; char* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  size_t apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (char const) ; 
 TYPE_1__* FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 

const char *
FUNC4(const char *path, apr_pool_t *pool)
{
  svn_stringbuf_t *retstr;
  apr_size_t i;
  svn_boolean_t query_start = FALSE;

  /* avoid repeated realloc */
  retstr = FUNC3(FUNC0(path) + 1, pool);

  retstr->len = 0;
  for (i = 0; path[i]; i++)
    {
      char c = path[i];

      if (c == '?')
        {
          /* Mark the start of the query string, if it exists. */
          query_start = TRUE;
        }
      else if (c == '+' && query_start)
        {
          /* Only do this if we are into the query string.
           * RFC 2396, section 3.3  */
          c = ' ';
        }
      else if (c == '%' && FUNC2(path[i + 1])
               && FUNC2(path[i+2]))
        {
          char digitz[3];
          digitz[0] = path[++i];
          digitz[1] = path[++i];
          digitz[2] = '\0';
          c = (char)(FUNC1(digitz, NULL, 16));
        }

      retstr->data[retstr->len++] = c;
    }

  /* Null-terminate this bad-boy. */
  retstr->data[retstr->len] = 0;

  return retstr->data;
}