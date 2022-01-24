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
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_checksum_kind_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct checksum_stream_baton {int /*<<< orphan*/ * pool; int /*<<< orphan*/  read_more; int /*<<< orphan*/ * proxy; int /*<<< orphan*/ ** write_checksum; int /*<<< orphan*/ ** read_checksum; int /*<<< orphan*/ * write_ctx; int /*<<< orphan*/ * read_ctx; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 struct checksum_stream_baton* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  close_handler_checksum ; 
 int /*<<< orphan*/  data_available_handler_checksum ; 
 int /*<<< orphan*/  read_full_handler_checksum ; 
 int /*<<< orphan*/  read_handler_checksum ; 
 int /*<<< orphan*/  seek_handler_checksum ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct checksum_stream_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  write_handler_checksum ; 

svn_stream_t *
FUNC9(svn_stream_t *stream,
                        svn_checksum_t **read_checksum,
                        svn_checksum_t **write_checksum,
                        svn_checksum_kind_t checksum_kind,
                        svn_boolean_t read_all,
                        apr_pool_t *pool)
{
  svn_stream_t *s;
  struct checksum_stream_baton *baton;

  if (read_checksum == NULL && write_checksum == NULL)
    return stream;

  baton = FUNC0(pool, sizeof(*baton));
  if (read_checksum)
    baton->read_ctx = FUNC1(checksum_kind, pool);
  else
    baton->read_ctx = NULL;

  if (write_checksum)
    baton->write_ctx = FUNC1(checksum_kind, pool);
  else
    baton->write_ctx = NULL;

  baton->read_checksum = read_checksum;
  baton->write_checksum = write_checksum;
  baton->proxy = stream;
  baton->read_more = read_all;
  baton->pool = pool;

  s = FUNC2(baton, pool);
  FUNC5(s, read_handler_checksum, read_full_handler_checksum);
  FUNC7(s, write_handler_checksum);
  FUNC4(s, data_available_handler_checksum);
  FUNC3(s, close_handler_checksum);
  if (FUNC8(stream))
    FUNC6(s, seek_handler_checksum);
  return s;
}