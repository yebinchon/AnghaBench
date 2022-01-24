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
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(svn_stringbuf_t **outstr,
                const char *data,
                apr_size_t len,
                apr_pool_t *pool)
{
  const char *end = data + len;
  const char *p = data, *q;

  if (*outstr == NULL)
    *outstr = FUNC2(len, pool);

  while (1)
    {
      /* Find a character which needs to be quoted and append bytes up
         to that point. */
      q = p;
      while (q < end && *q != '&' && *q != '<' && *q != '>'
             && *q != '"' && *q != '\'' && *q != '\r'
             && *q != '\n' && *q != '\t')
        q++;
      FUNC0(*outstr, p, q - p);

      /* We may already be a winner.  */
      if (q == end)
        break;

      /* Append the entity reference for the character.  */
      if (*q == '&')
        FUNC1(*outstr, "&amp;");
      else if (*q == '<')
        FUNC1(*outstr, "&lt;");
      else if (*q == '>')
        FUNC1(*outstr, "&gt;");
      else if (*q == '"')
        FUNC1(*outstr, "&quot;");
      else if (*q == '\'')
        FUNC1(*outstr, "&apos;");
      else if (*q == '\r')
        FUNC1(*outstr, "&#13;");
      else if (*q == '\n')
        FUNC1(*outstr, "&#10;");
      else if (*q == '\t')
        FUNC1(*outstr, "&#9;");

      p = q + 1;
    }
}