#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char const* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
struct TYPE_8__ {char* data; int len; } ;
typedef  TYPE_2__ svn_string_t ;
typedef  int /*<<< orphan*/  escaped_char ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,unsigned char) ; 
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC6(const svn_string_t *src, apr_pool_t *result_pool)
{
  const char *end = src->data + src->len;
  const char *p = src->data, *q;
  svn_stringbuf_t *outstr;
  char escaped_char[6]; /* ? \ u u u \0 */

  for (q = p; q < end; q++)
    {
      if (!FUNC1(*q) || FUNC2(*q))
        break;
    }

  if (q == end)
    return src->data;

  outstr = FUNC5(result_pool);
  while (1)
    {
      q = p;

      /* Traverse till either unsafe character or eos. */
      while (q < end && FUNC1(*q) && !FUNC2(*q))
        q++;

      /* copy chunk before marker */
      FUNC3(outstr, p, q - p);

      if (q == end)
        break;

      FUNC0(escaped_char, sizeof(escaped_char), "?\\%03u",
                   (unsigned char) *q);
      FUNC4(outstr, escaped_char);

      p = q + 1;
    }

  return outstr->data;
}