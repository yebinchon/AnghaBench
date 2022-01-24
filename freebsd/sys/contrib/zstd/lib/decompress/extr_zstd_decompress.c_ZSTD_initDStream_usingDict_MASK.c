#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  format; } ;
typedef  TYPE_1__ ZSTD_DStream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSTD_reset_session_only ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 

size_t FUNC5(ZSTD_DStream* zds, const void* dict, size_t dictSize)
{
    FUNC0(4, "ZSTD_initDStream_usingDict");
    FUNC1( FUNC3(zds, ZSTD_reset_session_only) );
    FUNC1( FUNC2(zds, dict, dictSize) );
    return FUNC4(zds->format);
}