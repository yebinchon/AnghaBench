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
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_io_file_del_none ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(const char *src, const char *dst,
                         svn_cancel_func_t cancel_func, void *cancel_baton,
                         apr_pool_t *scratch_pool)
{
  const char *dst_tmp;
  svn_stream_t *src_stream;
  svn_stream_t *dst_stream;

  /* Open a temporary destination that we will eventually atomically
     rename into place. */
  FUNC0(FUNC5(&dst_stream, &dst_tmp,
                                 FUNC1(dst, scratch_pool),
                                 svn_io_file_del_none,
                                 scratch_pool, scratch_pool));
  FUNC0(FUNC6(&src_stream, src,
                                     scratch_pool, scratch_pool));
  FUNC0(FUNC4(src_stream, dst_stream,
                           cancel_func, cancel_baton, scratch_pool));

  /* Do the atomic rename from our temporary location. */
  return FUNC2(FUNC3(dst_tmp, dst, FALSE, scratch_pool));
}