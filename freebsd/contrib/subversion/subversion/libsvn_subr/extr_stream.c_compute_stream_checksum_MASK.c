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
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_checksum_kind_t ;
typedef  int /*<<< orphan*/  svn_checksum_ctx_t ;
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ SVN__STREAM_CHUNK_SIZE ; 
 char* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_checksum_t **checksum,
                        svn_stream_t *stream,
                        svn_checksum_kind_t kind,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  svn_checksum_ctx_t *ctx = FUNC2(kind, scratch_pool);
  char *buf = FUNC1(scratch_pool, SVN__STREAM_CHUNK_SIZE);

  while (1)
    {
      apr_size_t len = SVN__STREAM_CHUNK_SIZE;

      FUNC0(FUNC5(stream, buf, &len));

      if (len > 0)
        FUNC0(FUNC4(ctx, buf, len));

      if (len != SVN__STREAM_CHUNK_SIZE)
          break;
    }
  FUNC0(FUNC3(checksum, ctx, result_pool));

  return SVN_NO_ERROR;
}