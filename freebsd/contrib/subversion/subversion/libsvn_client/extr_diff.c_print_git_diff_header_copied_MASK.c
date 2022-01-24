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
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_EOL_STR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char*,char const*,char const*,...) ; 

__attribute__((used)) static svn_error_t *
FUNC2(svn_stream_t *os, const char *header_encoding,
                             const char *copyfrom_path,
                             svn_revnum_t copyfrom_rev,
                             const char *path,
                             apr_pool_t *scratch_pool)
{
  FUNC0(FUNC1(os, header_encoding, scratch_pool,
                                      "diff --git a/%s b/%s%s",
                                      copyfrom_path, path, APR_EOL_STR));
  if (copyfrom_rev != SVN_INVALID_REVNUM)
    FUNC0(FUNC1(os, header_encoding, scratch_pool,
                                        "copy from %s@%ld%s", copyfrom_path,
                                        copyfrom_rev, APR_EOL_STR));
  else
    FUNC0(FUNC1(os, header_encoding, scratch_pool,
                                        "copy from %s%s", copyfrom_path,
                                        APR_EOL_STR));
  FUNC0(FUNC1(os, header_encoding, scratch_pool,
                                      "copy to %s%s", path, APR_EOL_STR));
  return SVN_NO_ERROR;
}