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
struct encode_baton {int /*<<< orphan*/ * pool; scalar_t__ linelen; int /*<<< orphan*/ * output; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 struct encode_baton* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  encode_data ; 
 int /*<<< orphan*/  finish_encoding_data ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct encode_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

svn_stream_t *
FUNC5(svn_stream_t *output, apr_pool_t *pool)
{
  apr_pool_t *subpool = FUNC1(pool);
  struct encode_baton *eb = FUNC0(subpool, sizeof(*eb));
  svn_stream_t *stream;

  eb->output = output;
  eb->linelen = 0;
  eb->pool = subpool;
  stream = FUNC2(eb, pool);
  FUNC4(stream, encode_data);
  FUNC3(stream, finish_encoding_data);
  return stream;
}