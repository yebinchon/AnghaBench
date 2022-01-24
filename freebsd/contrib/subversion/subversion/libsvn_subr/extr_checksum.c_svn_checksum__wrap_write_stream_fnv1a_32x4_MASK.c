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
typedef  int /*<<< orphan*/  apr_uint32_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  close_handler_fnv1a_32x4 ; 
 int /*<<< orphan*/  svn_checksum_fnv1a_32x4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_stream_t *
FUNC2(apr_uint32_t *digest,
                                           svn_stream_t *inner_stream,
                                           apr_pool_t *pool)
{
  svn_stream_t *result
    = FUNC1(NULL, (unsigned char *)digest, inner_stream,
                        svn_checksum_fnv1a_32x4, pool);
  FUNC0(result, close_handler_fnv1a_32x4);

  return result;
}