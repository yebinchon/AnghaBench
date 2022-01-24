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
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  data_available_disown ; 
 int /*<<< orphan*/  mark_handler_disown ; 
 int /*<<< orphan*/  read_full_handler_disown ; 
 int /*<<< orphan*/  read_handler_disown ; 
 int /*<<< orphan*/  readline_handler_disown ; 
 int /*<<< orphan*/  seek_handler_disown ; 
 int /*<<< orphan*/  skip_handler_disown ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_handler_disown ; 

svn_stream_t *
FUNC8(svn_stream_t *stream, apr_pool_t *pool)
{
  svn_stream_t *s = FUNC0(stream, pool);

  FUNC3(s, read_handler_disown, read_full_handler_disown);
  FUNC6(s, skip_handler_disown);
  FUNC7(s, write_handler_disown);
  FUNC2(s, mark_handler_disown);
  FUNC5(s, seek_handler_disown);
  FUNC1(s, data_available_disown);
  FUNC4(s, readline_handler_disown);

  return s;
}