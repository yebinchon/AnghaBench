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
struct TYPE_5__ {int len; char* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 size_t LINE_DISPLAY_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC7 (char*,size_t) ; 
 size_t FUNC8 (char*) ; 
 char const* FUNC9 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC10(const char *line, apr_pool_t *pool)
{
  svn_stringbuf_t *buf = FUNC6(line, pool);
  size_t width;
  size_t line_width = LINE_DISPLAY_WIDTH;
  apr_pool_t *iterpool;

  /* Trim EOL. */
  if (buf->len >= 2 &&
      buf->data[buf->len - 2] == '\r' &&
      buf->data[buf->len - 1] == '\n')
    FUNC5(buf, 2);
  else if (buf->len >= 1 &&
           (buf->data[buf->len - 1] == '\n' ||
            buf->data[buf->len - 1] == '\r'))
    FUNC5(buf, 1);

  /* Determine the on-screen width of the line. */
  width = FUNC8(buf->data);
  if (width == -1)
    {
      /* Determining the width failed. Try to get rid of unprintable
       * characters in the line buffer. */
      buf = FUNC6(FUNC9(buf->data, pool), pool);
      width = FUNC8(buf->data);
      if (width == -1)
        width = buf->len; /* fallback: buffer length */
    }

  /* Trim further in case line is still too long, or add padding in case
   * it is too short. */
  iterpool = FUNC2(pool);
  while (width > line_width)
    {
      const char *last_valid;

      FUNC1(iterpool);

      FUNC5(buf, 1);

      /* Be careful not to invalidate the UTF-8 string by trimming
       * just part of a character. */
      last_valid = FUNC7(buf->data, buf->len);
      if (last_valid < buf->data + buf->len)
        FUNC5(buf, (buf->data + buf->len) - last_valid);

      width = FUNC8(buf->data);
      if (width == -1)
        width = buf->len; /* fallback: buffer length */
    }
  FUNC3(iterpool);

  while (width == 0 || width < line_width)
    {
      FUNC4(buf, ' ');
      width++;
    }

  FUNC0(width == line_width);
  return buf->data;
}