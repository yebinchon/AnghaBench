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
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN__LINE_CHUNK_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_stringbuf_t **stringbuf,
                         svn_boolean_t *eof,
                         const char *eol,
                         svn_stream_t *stream,
                         apr_pool_t *pool)
{
  svn_stringbuf_t *str;
  apr_size_t numbytes;
  const char *match;
  char c;

  /* Since we're reading one character at a time, let's at least
     optimize for the 90% case.  90% of the time, we can avoid the
     stringbuf ever having to realloc() itself if we start it out at
     80 chars.  */
  str = FUNC4(SVN__LINE_CHUNK_SIZE, pool);

  /* Read into STR up to and including the next EOL sequence. */
  match = eol;
  while (*match)
    {
      numbytes = 1;
      FUNC0(FUNC1(stream, &c, &numbytes));
      if (numbytes != 1)
        {
          /* a 'short' read means the stream has run out. */
          *eof = TRUE;
          *stringbuf = str;
          return SVN_NO_ERROR;
        }

      if (c == *match)
        match++;
      else
        match = eol;

      FUNC2(str, c);
    }

  *eof = FALSE;
  FUNC3(str, match - eol);
  *stringbuf = str;

  return SVN_NO_ERROR;
}