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
typedef  int /*<<< orphan*/  svn_error_t ;
struct checksum_stream_baton {int /*<<< orphan*/  proxy; int /*<<< orphan*/  pool; scalar_t__ write_ctx; int /*<<< orphan*/  write_checksum; scalar_t__ read_ctx; int /*<<< orphan*/  read_checksum; scalar_t__ read_more; } ;
typedef  int /*<<< orphan*/  apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN__STREAM_CHUNK_SIZE ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC6(void *baton)
{
  struct checksum_stream_baton *btn = baton;

  /* If we're supposed to drain the stream, do so before finalizing the
     checksum. */
  if (btn->read_more)
    {
      char *buf = FUNC1(btn->pool, SVN__STREAM_CHUNK_SIZE);
      apr_size_t len = SVN__STREAM_CHUNK_SIZE;

      do
        {
          FUNC0(FUNC2(baton, buf, &len));
        }
      while (btn->read_more);
    }

  if (btn->read_ctx)
    FUNC0(FUNC3(btn->read_checksum, btn->read_ctx, btn->pool));

  if (btn->write_ctx)
    FUNC0(FUNC3(btn->write_checksum, btn->write_ctx, btn->pool));

  return FUNC4(FUNC5(btn->proxy));
}