#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
struct TYPE_6__ {char const* data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  apr_time_t ;
struct TYPE_7__ {int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_mday; int /*<<< orphan*/  tm_mon; int /*<<< orphan*/  tm_year; } ;
typedef  TYPE_2__ apr_time_exp_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 char const* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC9 (char const*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_string_t *
FUNC10(const char *fmt,
               const char *rev,
               const char *url,
               const char *repos_root_url,
               apr_time_t date,
               const char *author,
               apr_pool_t *pool)
{
  svn_stringbuf_t *value = FUNC6(pool);
  const char *cur;
  size_t n;

  for (;;)
    {
      cur = fmt;

      while (*cur != '\0' && *cur != '%')
        cur++;

      if ((n = cur - fmt) > 0) /* Do we have an as-is string? */
        FUNC4(value, fmt, n);

      if (*cur == '\0')
        break;

      switch (cur[1])
        {
        case 'a': /* author of this revision */
          if (author)
            FUNC5(value, author);
          break;
        case 'b': /* basename of this file */
          if (url && *url)
            {
              const char *base_name = FUNC8(url, pool);
              FUNC5(value, base_name);
            }
          break;
        case 'd': /* short format of date of this revision */
          if (date)
            {
              apr_time_exp_t exploded_time;
              const char *human;

              FUNC1(&exploded_time, date);

              human = FUNC0(pool, "%04d-%02d-%02d %02d:%02d:%02dZ",
                                   exploded_time.tm_year + 1900,
                                   exploded_time.tm_mon + 1,
                                   exploded_time.tm_mday,
                                   exploded_time.tm_hour,
                                   exploded_time.tm_min,
                                   exploded_time.tm_sec);

              FUNC5(value, human);
            }
          break;
        case 'D': /* long format of date of this revision */
          if (date)
            FUNC5(value,
                                     FUNC7(date, pool));
          break;
        case 'P': /* relative path of this file */
          if (repos_root_url && *repos_root_url != '\0' && url && *url != '\0')
            {
              const char *repos_relpath;

              repos_relpath = FUNC9(repos_root_url, url, pool);
              if (repos_relpath)
                FUNC5(value, repos_relpath);
            }
          break;
        case 'R': /* root of repos */
          if (repos_root_url && *repos_root_url != '\0')
            FUNC5(value, repos_root_url);
          break;
        case 'r': /* number of this revision */
          if (rev)
            FUNC5(value, rev);
          break;
        case 'u': /* URL of this file */
          if (url)
            FUNC5(value, url);
          break;
        case '_': /* '%_' => a space */
          FUNC3(value, ' ');
          break;
        case '%': /* '%%' => a literal % */
          FUNC3(value, *cur);
          break;
        case '\0': /* '%' as the last character of the string. */
          FUNC3(value, *cur);
          /* Now go back one character, since this was just a one character
           * sequence, whereas all others are two characters, and we do not
           * want to skip the null terminator entirely and carry on
           * formatting random memory contents. */
          cur--;
          break;
        case 'H':
          {
            svn_string_t *s = FUNC10("%P%_%r%_%d%_%a", rev, url,
                                             repos_root_url, date, author,
                                             pool);
            FUNC5(value, s->data);
          }
          break;
        case 'I':
          {
            svn_string_t *s = FUNC10("%b%_%r%_%d%_%a", rev, url,
                                             repos_root_url, date, author,
                                             pool);
            FUNC5(value, s->data);
          }
          break;
        default: /* Unrecognized code, just print it literally. */
          FUNC4(value, cur, 2);
          break;
        }

      /* Format code is processed - skip it, and get ready for next chunk. */
      fmt = cur + 2;
    }

  return FUNC2(value);
}