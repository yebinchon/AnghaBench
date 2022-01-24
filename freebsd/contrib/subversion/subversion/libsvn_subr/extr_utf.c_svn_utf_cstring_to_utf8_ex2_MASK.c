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
typedef  int /*<<< orphan*/  xlate_handle_node_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_APR_UTF8_CHARSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_UTF_NTOU_XLATE_HANDLE ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const**,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC7(const char **dest,
                            const char *src,
                            const char *frompage,
                            apr_pool_t *pool)
{
  xlate_handle_node_t *node;
  svn_error_t *err;
  const char *convset_key = FUNC4(SVN_APR_UTF8_CHARSET, frompage,
                                          pool);

  FUNC0(FUNC3(&node, SVN_APR_UTF8_CHARSET, frompage,
                                convset_key, pool));
  err = FUNC2(dest, src, node, pool);
  FUNC0(FUNC6(err,
                                   FUNC5
                                      (node,
                                       SVN_UTF_NTOU_XLATE_HANDLE,
                                       pool)));

  return FUNC1(*dest, pool);
}