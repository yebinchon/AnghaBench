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
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
struct string_stream_baton {scalar_t__ amt_read; int /*<<< orphan*/  const* str; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 struct string_stream_baton* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  data_available_handler_string ; 
 int /*<<< orphan*/  mark_handler_string ; 
 int /*<<< orphan*/  read_handler_string ; 
 int /*<<< orphan*/  readline_handler_string ; 
 int /*<<< orphan*/  seek_handler_string ; 
 int /*<<< orphan*/  skip_handler_string ; 
 int /*<<< orphan*/ * FUNC1 (struct string_stream_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

svn_stream_t *
FUNC9(const svn_string_t *str,
                       apr_pool_t *pool)
{
  svn_stream_t *stream;
  struct string_stream_baton *baton;

  if (! str)
    return FUNC2(pool);

  baton = FUNC0(pool, sizeof(*baton));
  baton->str = str;
  baton->amt_read = 0;
  stream = FUNC1(baton, pool);
  FUNC5(stream, read_handler_string, read_handler_string);
  FUNC4(stream, mark_handler_string);
  FUNC7(stream, seek_handler_string);
  FUNC8(stream, skip_handler_string);
  FUNC3(stream, data_available_handler_string);
  FUNC6(stream, readline_handler_string);
  return stream;
}