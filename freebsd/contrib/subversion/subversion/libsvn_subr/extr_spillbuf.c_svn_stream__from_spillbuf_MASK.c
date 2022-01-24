#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_spillbuf_t ;
struct spillbuf_baton {int /*<<< orphan*/  scratch_pool; TYPE_1__* reader; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_2__ {int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 struct spillbuf_baton* FUNC0 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  read_handler_spillbuf ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct spillbuf_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_handler_spillbuf ; 

svn_stream_t *
FUNC6(svn_spillbuf_t *buf,
                          apr_pool_t *result_pool)
{
  svn_stream_t *stream;
  struct spillbuf_baton *sb = FUNC0(result_pool, sizeof(*sb));

  sb->reader = FUNC1(result_pool, sizeof(*sb->reader));
  sb->reader->buf = buf;
  sb->scratch_pool = FUNC2(result_pool);

  stream = FUNC3(sb, result_pool);

  FUNC4(stream, NULL /* only full read support */,
                       read_handler_spillbuf);
  FUNC5(stream, write_handler_spillbuf);

  return stream;
}