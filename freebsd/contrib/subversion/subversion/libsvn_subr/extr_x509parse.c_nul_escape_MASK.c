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
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC3(const svn_string_t *src, apr_pool_t *result_pool)
{
  const char *end = src->data + src->len;
  const char *p = src->data, *q;
  svn_stringbuf_t *outstr;

  for (q = p; q < end; q++)
    {
      if (*q == '\0')
        break;
    }

  if (q == end)
    return src->data;

  outstr = FUNC2(result_pool);
  while (1)
    {
      q = p;

      /* Traverse till either unsafe character or eos. */
      while (q < end && *q != '\0')
        q++;

      /* copy chunk before marker */
      FUNC0(outstr, p, q - p);

      if (q == end)
        break;

      FUNC1(outstr, "?\\000");

      p = q + 1;
    }

  return outstr->data;
}