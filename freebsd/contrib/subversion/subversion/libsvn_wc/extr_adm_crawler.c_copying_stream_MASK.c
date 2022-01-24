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
struct copying_stream_baton {int /*<<< orphan*/ * target; int /*<<< orphan*/ * source; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 struct copying_stream_baton* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  close_handler_copy ; 
 int /*<<< orphan*/  read_handler_copy ; 
 int /*<<< orphan*/  seek_handler_copy ; 
 int /*<<< orphan*/ * FUNC1 (struct copying_stream_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_stream_t *
FUNC6(svn_stream_t *source,
               svn_stream_t *target,
               apr_pool_t *pool)
{
  struct copying_stream_baton *baton;
  svn_stream_t *stream;

  baton = FUNC0(pool, sizeof (*baton));
  baton->source = source;
  baton->target = target;

  stream = FUNC1(baton, pool);
  FUNC3(stream, NULL /* only full read support */,
                       read_handler_copy);
  FUNC2(stream, close_handler_copy);

  if (FUNC5(source) && FUNC5(target))
    {
      FUNC4(stream, seek_handler_copy);
    }

  return stream;
}