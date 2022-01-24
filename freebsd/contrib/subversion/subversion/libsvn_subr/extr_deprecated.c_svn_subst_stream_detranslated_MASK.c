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
typedef  int /*<<< orphan*/  svn_subst_eol_style_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(svn_stream_t **stream_p,
                              const char *src,
                              svn_subst_eol_style_t eol_style,
                              const char *eol_str,
                              svn_boolean_t always_repair_eols,
                              apr_hash_t *keywords,
                              svn_boolean_t special,
                              apr_pool_t *pool)
{
  svn_stream_t *src_stream;

  if (special)
    return FUNC3(stream_p, src, pool, pool);

  /* This will be closed by svn_subst_stream_translated_to_normal_form
     when the returned stream is closed. */
  FUNC0(FUNC2(&src_stream, src, pool, pool));

  return FUNC1(FUNC4(
                           stream_p, src_stream,
                           eol_style, eol_str,
                           always_repair_eols,
                           keywords, pool));
}