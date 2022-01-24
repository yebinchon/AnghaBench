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
typedef  int /*<<< orphan*/  svn_txdelta_window_handler_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_DELTA_COMPRESSION_LEVEL_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC1(svn_txdelta_window_handler_t *handler,
                        void **handler_baton,
                        svn_stream_t *output,
                        int svndiff_version,
                        apr_pool_t *pool)
{
  FUNC0(handler, handler_baton, output, svndiff_version,
                          SVN_DELTA_COMPRESSION_LEVEL_DEFAULT, pool);
}