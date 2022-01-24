#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  dictBufferSize; int /*<<< orphan*/  dictBuffer; int /*<<< orphan*/  dctx; } ;
typedef  TYPE_1__ BMK_initDCtxArgs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSTD_reset_session_and_parameters ; 

__attribute__((used)) static size_t FUNC2(void* payload) {
    const BMK_initDCtxArgs* ag = (const BMK_initDCtxArgs*)payload;
    FUNC1(ag->dctx, ZSTD_reset_session_and_parameters);
    FUNC0(ag->dctx, ag->dictBuffer, ag->dictBufferSize);
    return 0;
}