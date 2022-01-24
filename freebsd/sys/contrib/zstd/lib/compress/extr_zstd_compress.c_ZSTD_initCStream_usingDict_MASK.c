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
typedef  int /*<<< orphan*/  ZSTD_CStream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ZSTD_c_compressionLevel ; 
 int /*<<< orphan*/  ZSTD_reset_session_only ; 

size_t FUNC5(ZSTD_CStream* zcs, const void* dict, size_t dictSize, int compressionLevel)
{
    FUNC0(4, "ZSTD_initCStream_usingDict");
    FUNC1( FUNC3(zcs, ZSTD_reset_session_only) );
    FUNC1( FUNC4(zcs, ZSTD_c_compressionLevel, compressionLevel) );
    FUNC1( FUNC2(zcs, dict, dictSize) );
    return 0;
}