#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
struct TYPE_4__ {char const* fs_path; int /*<<< orphan*/ * pool; int /*<<< orphan*/ * root; } ;
typedef  TYPE_1__ presentation_stream_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  data_available_handler_rep ; 
 int /*<<< orphan*/  mark_handler_rep ; 
 int /*<<< orphan*/  read_handler_rep ; 
 int /*<<< orphan*/  readline_handler_rep ; 
 int /*<<< orphan*/  seek_handler_rep ; 
 int /*<<< orphan*/  skip_handler_rep ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_stream_t *
FUNC8(svn_fs_root_t *root,
                      const char *fs_path,
                      apr_pool_t *pool)
{
  svn_stream_t *stream;
  presentation_stream_baton_t *baton;

  baton = FUNC0(pool, sizeof(*baton));
  baton->root = root;
  baton->fs_path = fs_path;
  baton->pool = pool;

  stream = FUNC1(baton, pool);
  FUNC4(stream, read_handler_rep, read_handler_rep);
  FUNC3(stream, mark_handler_rep);
  FUNC6(stream, seek_handler_rep);
  FUNC7(stream, skip_handler_rep);
  FUNC2(stream, data_available_handler_rep);
  FUNC5(stream, readline_handler_rep);
  return stream;
}