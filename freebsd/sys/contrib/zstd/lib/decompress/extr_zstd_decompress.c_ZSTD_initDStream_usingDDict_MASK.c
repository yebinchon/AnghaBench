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
typedef  int /*<<< orphan*/  ZSTD_DDict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSTD_reset_session_only ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 

size_t FUNC4(ZSTD_DStream* dctx, const ZSTD_DDict* ddict)
{
    FUNC0( FUNC2(dctx, ZSTD_reset_session_only) );
    FUNC0( FUNC1(dctx, ddict) );
    return FUNC3(dctx->format);
}