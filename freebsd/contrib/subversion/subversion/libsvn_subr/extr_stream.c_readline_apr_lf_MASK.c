#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* data; int len; scalar_t__ blocksize; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ APR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ SVN__LINE_CHUNK_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * FUNC7 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC9 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static svn_error_t *
FUNC11(apr_file_t *file,
                svn_stringbuf_t **stringbuf,
                svn_boolean_t *eof,
                apr_pool_t *pool)
{
  svn_stringbuf_t *buf;

  buf = FUNC9(SVN__LINE_CHUNK_SIZE, pool);
  while (1)
  {
    apr_status_t status;

    status = FUNC2(buf->data + buf->len,
                           (int) (buf->blocksize - buf->len),
                           file);
    buf->len += FUNC3(buf->data + buf->len);

    if (FUNC0(status))
      {
        /* apr_file_gets() keeps the newline; strip it if necessary. */
        if (buf->len > 0 && buf->data[buf->len - 1] == '\n')
          FUNC8(buf, 1);

        *eof = TRUE;
        *stringbuf = buf;
        return SVN_NO_ERROR;
      }
    else if (status != APR_SUCCESS)
      {
        const char *fname;
        svn_error_t *err = FUNC7(&fname, file, pool);
        if (err)
          fname = NULL;
        FUNC5(err);

        if (fname)
          return FUNC6(status,
                                    FUNC1("Can't read a line from file '%s'"),
                                    FUNC4(fname, pool));
        else
          return FUNC6(status,
                                    FUNC1("Can't read a line from stream"));
      }

    /* Do we have the EOL?  If yes, strip it and return. */
    if (buf->len > 0 && buf->data[buf->len - 1] == '\n')
      {
        FUNC8(buf, 1);
        *eof = FALSE;
        *stringbuf = buf;
        return SVN_NO_ERROR;
      }

    /* Otherwise, prepare to read the next chunk. */
    FUNC10(buf, buf->blocksize + SVN__LINE_CHUNK_SIZE);
  }
}