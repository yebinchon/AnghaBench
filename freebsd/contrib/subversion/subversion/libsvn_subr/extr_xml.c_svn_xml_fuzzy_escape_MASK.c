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
typedef  int /*<<< orphan*/  escaped_char ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,unsigned char) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 

const char *
FUNC6(const char *string, apr_pool_t *pool)
{
  const char *end = string + FUNC1(string);
  const char *p = string, *q;
  svn_stringbuf_t *outstr;
  char escaped_char[6];   /* ? \ u u u \0 */

  for (q = p; q < end; q++)
    {
      if (FUNC2(*q)
          && ! ((*q == '\n') || (*q == '\r') || (*q == '\t')))
        break;
    }

  /* Return original string if no unsafe characters found. */
  if (q == end)
    return string;

  outstr = FUNC5(pool);
  while (1)
    {
      q = p;

      /* Traverse till either unsafe character or eos. */
      while ((q < end)
             && ((! FUNC2(*q))
                 || (*q == '\n') || (*q == '\r') || (*q == '\t')))
        q++;

      /* copy chunk before marker */
      FUNC3(outstr, p, q - p);

      if (q == end)
        break;

      /* Append an escaped version of the unsafe character.

         ### This format was chosen for consistency with
         ### svn_utf__cstring_from_utf8_fuzzy().  The two functions
         ### should probably share code, even though they escape
         ### different characters.
      */
      FUNC0(escaped_char, sizeof(escaped_char), "?\\%03u",
                   (unsigned char) *q);
      FUNC4(outstr, escaped_char);

      p = q + 1;
    }

  return outstr->data;
}