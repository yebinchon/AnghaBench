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
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct md5_stream_baton {unsigned char const** read_digest; unsigned char const** write_digest; int /*<<< orphan*/  write_checksum; int /*<<< orphan*/  read_checksum; int /*<<< orphan*/  proxy; int /*<<< orphan*/ * pool; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 struct md5_stream_baton* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  close_handler_md5 ; 
 int /*<<< orphan*/  read_full_handler_md5 ; 
 int /*<<< orphan*/  read_handler_md5 ; 
 int /*<<< orphan*/  skip_handler_md5 ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct md5_stream_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_handler_md5 ; 

svn_stream_t *
FUNC7(svn_stream_t *stream,
                       const unsigned char **read_digest,
                       const unsigned char **write_digest,
                       svn_boolean_t read_all,
                       apr_pool_t *pool)
{
  svn_stream_t *s;
  struct md5_stream_baton *baton;

  if (! read_digest && ! write_digest)
    return stream;

  baton = FUNC0(pool, sizeof(*baton));
  baton->read_digest = read_digest;
  baton->write_digest = write_digest;
  baton->pool = pool;

  /* Set BATON->proxy to a stream that will fill in BATON->read_checksum
   * and BATON->write_checksum (if we want them) when it is closed. */
  baton->proxy
    = FUNC1(stream,
                              read_digest ? &baton->read_checksum : NULL,
                              write_digest ? &baton->write_checksum : NULL,
                              svn_checksum_md5,
                              read_all, pool);

  /* Create a stream that will forward its read/write/close operations to
   * BATON->proxy and will fill in *READ_DIGEST and *WRITE_DIGEST (if we
   * want them) after it closes BATON->proxy. */
  s = FUNC2(baton, pool);
  FUNC4(s, read_handler_md5, read_full_handler_md5);
  FUNC5(s, skip_handler_md5);
  FUNC6(s, write_handler_md5);
  FUNC3(s, close_handler_md5);
  return s;
}