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
typedef  int /*<<< orphan*/  svn_diff_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,char const*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC1(svn_stream_t *output_stream,
                              svn_diff_t *diff,
                              const char *original_path,
                              const char *modified_path,
                              const char *original_header,
                              const char *modified_header,
                              const char *header_encoding,
                              apr_pool_t *pool)
{
  return FUNC0(output_stream, diff,
                                       original_path, modified_path,
                                       original_header, modified_header,
                                       header_encoding, NULL, FALSE, pool);
}