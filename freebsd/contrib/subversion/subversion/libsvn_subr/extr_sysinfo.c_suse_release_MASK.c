#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ *,char*,char const*,char*,char const*,char*) ; 
 TYPE_1__* FUNC1 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (TYPE_1__*,char) ; 
 scalar_t__ FUNC3 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,TYPE_1__**,char*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static const char *
FUNC8(apr_pool_t *pool)
{
  const char *release = NULL;
  const char *codename = NULL;

  svn_stringbuf_t *buffer = FUNC1("/etc/SuSE-release", pool);
  svn_stringbuf_t *line;
  svn_stream_t *stream;
  svn_boolean_t eof;
  svn_error_t *err;
  if (!buffer)
      return NULL;

  stream = FUNC5(buffer, pool);
  err = FUNC6(stream, &line, "\n", &eof, pool);
  if (err || eof)
    {
      FUNC4(err);
      return NULL;
    }

  FUNC7(line);
  release = line->data;

  for (;;)
    {
      const char *key;

      err = FUNC6(stream, &line, "\n", &eof, pool);
      if (err || eof)
        {
          FUNC4(err);
          break;
        }

      key = FUNC2(line, '=');
      if (!key)
        continue;

      if (0 == FUNC3(key, "CODENAME", 8))
        codename = line->data;
    }

  return FUNC0(pool, "%s%s%s%s",
                      release,
                      (codename ? " (" : ""),
                      (codename ? codename : ""),
                      (codename ? ")" : ""));
}