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
typedef  int /*<<< orphan*/  svn_spillbuf_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

svn_spillbuf_t *
FUNC2(apr_size_t blocksize,
                              apr_size_t maxsize,
                              svn_boolean_t delete_on_close,
                              svn_boolean_t spill_all_contents,
                              const char *dirpath,
                              apr_pool_t *result_pool)
{
  svn_spillbuf_t *buf = FUNC0(result_pool, sizeof(*buf));
  FUNC1(buf, blocksize, maxsize,
                         delete_on_close, spill_all_contents, dirpath,
                         result_pool);
  return buf;
}