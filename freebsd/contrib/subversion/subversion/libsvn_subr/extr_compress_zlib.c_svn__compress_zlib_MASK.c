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
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_BAD_COMPRESSION_METHOD ; 
 int SVN__COMPRESSION_NONE ; 
 int SVN__COMPRESSION_ZLIB_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

svn_error_t *
FUNC3(const void *data, apr_size_t len,
                   svn_stringbuf_t *out,
                   int compression_method)
{
  if (   compression_method < SVN__COMPRESSION_NONE
      || compression_method > SVN__COMPRESSION_ZLIB_MAX)
    return FUNC1(SVN_ERR_BAD_COMPRESSION_METHOD, NULL,
                             FUNC0("Unsupported compression method %d"),
                             compression_method);

  return FUNC2(data, len, out, compression_method);
}