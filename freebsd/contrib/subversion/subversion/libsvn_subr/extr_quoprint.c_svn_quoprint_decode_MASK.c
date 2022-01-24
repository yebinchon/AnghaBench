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
struct decode_baton {int /*<<< orphan*/ * pool; scalar_t__ buflen; int /*<<< orphan*/ * output; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 struct decode_baton* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  decode_data ; 
 int /*<<< orphan*/  finish_decoding_data ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct decode_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

svn_stream_t *
FUNC5(svn_stream_t *output, apr_pool_t *pool)
{
  apr_pool_t *subpool = FUNC1(pool);
  struct decode_baton *db = FUNC0(subpool, sizeof(*db));
  svn_stream_t *stream;

  db->output = output;
  db->buflen = 0;
  db->pool = subpool;
  stream = FUNC2(db, pool);
  FUNC4(stream, decode_data);
  FUNC3(stream, finish_decoding_data);
  return stream;
}