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
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ SVN__STREAM_CHUNK_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 

svn_error_t *
FUNC5(svn_boolean_t *same,
                          svn_stream_t *stream1,
                          svn_stream_t *stream2,
                          apr_pool_t *pool)
{
  char *buf1 = FUNC0(pool, SVN__STREAM_CHUNK_SIZE);
  char *buf2 = FUNC0(pool, SVN__STREAM_CHUNK_SIZE);
  apr_size_t bytes_read1 = SVN__STREAM_CHUNK_SIZE;
  apr_size_t bytes_read2 = SVN__STREAM_CHUNK_SIZE;
  svn_error_t *err = NULL;

  *same = TRUE;  /* assume TRUE, until disproved below */
  while (bytes_read1 == SVN__STREAM_CHUNK_SIZE
         && bytes_read2 == SVN__STREAM_CHUNK_SIZE)
    {
      err = FUNC4(stream1, buf1, &bytes_read1);
      if (err)
        break;
      err = FUNC4(stream2, buf2, &bytes_read2);
      if (err)
        break;

      if ((bytes_read1 != bytes_read2)
          || (FUNC1(buf1, buf2, bytes_read1)))
        {
          *same = FALSE;
          break;
        }
    }

  return FUNC2(err,
                                  FUNC2(
                                    FUNC3(stream1),
                                    FUNC3(stream2)));
}