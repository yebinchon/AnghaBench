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
struct TYPE_5__ {int blocksize; int len; char* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ MIN_READ_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

svn_error_t *
FUNC5(svn_stringbuf_t **result,
                          svn_stream_t *stream,
                          apr_size_t len_hint,
                          apr_pool_t *result_pool)
{
#define MIN_READ_SIZE 64
  svn_stringbuf_t *text
    = FUNC3(FUNC0(len_hint + 1, MIN_READ_SIZE),
                                  result_pool);

  while(TRUE)
    {
      apr_size_t to_read = text->blocksize - 1 - text->len;
      apr_size_t actually_read = to_read;

      FUNC1(FUNC2(stream, text->data + text->len, &actually_read));
      text->len += actually_read;

      if (actually_read < to_read)
        break;

      if (text->blocksize - text->len < MIN_READ_SIZE)
        FUNC4(text, text->blocksize * 2);
    }

  text->data[text->len] = '\0';
  *result = text;

  return SVN_NO_ERROR;
}