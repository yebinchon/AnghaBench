#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ * file; } ;
typedef  TYPE_1__ svn_stream_t ;
typedef  scalar_t__ svn_boolean_t ;
struct baton_apr {scalar_t__ truncate_on_seek; int /*<<< orphan*/ * pool; int /*<<< orphan*/ * file; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 struct baton_apr* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  close_handler_apr ; 
 int /*<<< orphan*/  data_available_handler_apr ; 
 int /*<<< orphan*/  mark_handler_apr ; 
 int /*<<< orphan*/  read_full_handler_apr ; 
 int /*<<< orphan*/  read_handler_apr ; 
 int /*<<< orphan*/  readline_handler_apr ; 
 int /*<<< orphan*/  seek_handler_apr ; 
 int /*<<< orphan*/  skip_handler_apr ; 
 TYPE_1__* FUNC1 (struct baton_apr*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_handler_apr ; 

__attribute__((used)) static svn_stream_t *
FUNC11(apr_file_t *file,
                          svn_boolean_t disown,
                          svn_boolean_t supports_seek,
                          svn_boolean_t truncate_on_seek,
                          apr_pool_t *pool)
{
  struct baton_apr *baton;
  svn_stream_t *stream;

  if (file == NULL)
    return FUNC2(pool);

  baton = FUNC0(pool, sizeof(*baton));
  baton->file = file;
  baton->pool = pool;
  baton->truncate_on_seek = truncate_on_seek;
  stream = FUNC1(baton, pool);
  FUNC6(stream, read_handler_apr, read_full_handler_apr);
  FUNC10(stream, write_handler_apr);

  if (supports_seek)
    {
      FUNC9(stream, skip_handler_apr);
      FUNC5(stream, mark_handler_apr);
      FUNC8(stream, seek_handler_apr);
      FUNC7(stream, readline_handler_apr);
    }

  FUNC4(stream, data_available_handler_apr);
  stream->file = file;

  if (! disown)
    FUNC3(stream, close_handler_apr);

  return stream;
}