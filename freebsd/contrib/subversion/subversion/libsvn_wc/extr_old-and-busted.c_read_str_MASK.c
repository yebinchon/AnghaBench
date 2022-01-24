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
struct TYPE_5__ {char* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_CORRUPT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char**,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*,int) ; 
 TYPE_1__* FUNC7 (char const*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(const char **result,
         char **buf, const char *end,
         apr_pool_t *pool)
{
  svn_stringbuf_t *s = NULL;
  const char *start;
  if (*buf == end)
    return FUNC4(SVN_ERR_WC_CORRUPT, NULL,
                            FUNC1("Unexpected end of entry"));
  if (**buf == '\n')
    {
      *result = NULL;
      (*buf)++;
      return SVN_NO_ERROR;
    }

  start = *buf;
  while (*buf != end && **buf != '\n')
    {
      if (**buf == '\\')
        {
          char c;
          if (! s)
            s = FUNC7(start, *buf - start, pool);
          else
            FUNC6(s, start, *buf - start);
          (*buf)++;
          FUNC0(FUNC3(&c, buf, end));
          FUNC5(s, c);
          start = *buf;
        }
      else
        (*buf)++;
    }

  if (*buf == end)
    return FUNC4(SVN_ERR_WC_CORRUPT, NULL,
                            FUNC1("Unexpected end of entry"));

  if (s)
    {
      FUNC6(s, start, *buf - start);
      *result = s->data;
    }
  else
    *result = FUNC2(pool, start, *buf - start);
  (*buf)++;
  return SVN_NO_ERROR;
}