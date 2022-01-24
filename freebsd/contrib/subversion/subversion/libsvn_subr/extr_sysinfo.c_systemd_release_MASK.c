#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char const* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
struct TYPE_11__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,TYPE_1__**,char*,scalar_t__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static const char *
FUNC8(apr_pool_t *pool)
{
  svn_error_t *err;
  svn_stream_t *stream;

  /* Open the file. */
  err = FUNC4(&stream, "/etc/os-release", pool, pool);
  if (err && FUNC0(err->apr_err))
    {
      FUNC2(err);
      err = FUNC4(&stream, "/usr/lib/os-release", pool,
                                     pool);
    }
  if (err)
    {
      FUNC2(err);
      return NULL;
    }

  /* Look for the PRETTY_NAME line. */
  while (TRUE)
    {
      svn_stringbuf_t *line;
      svn_boolean_t eof;

      err = FUNC5(stream, &line, "\n", &eof, pool);
      if (err)
        {
          FUNC2(err);
          return NULL;
        }

      if (!FUNC1(line->data, "PRETTY_NAME=", 12))
        {
          svn_stringbuf_t *release_name;

          /* The value may or may not be enclosed by double quotes.  We don't
           * attempt to strip them. */
          release_name = FUNC6(line->data + 12, pool);
          FUNC2(FUNC3(stream));
          FUNC7(release_name);
          return release_name->data;
        }

      if (eof)
        break;
    }

  /* The file did not contain a PRETTY_NAME line. */
  FUNC2(FUNC3(stream));
  return NULL;
}