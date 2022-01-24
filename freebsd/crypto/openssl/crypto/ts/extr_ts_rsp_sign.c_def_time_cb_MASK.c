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
struct timeval {long tv_sec; long tv_usec; } ;
struct TS_resp_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TS_F_DEF_TIME_CB ; 
 int /*<<< orphan*/  TS_INFO_TIME_NOT_AVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (struct TS_resp_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct TS_resp_ctx*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TS_R_TIME_SYSCALL_ERROR ; 
 int /*<<< orphan*/  TS_STATUS_REJECTION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct timeval*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct TS_resp_ctx *ctx, void *data,
                       long *sec, long *usec)
{
    struct timeval tv;
    if (FUNC3(&tv, NULL) != 0) {
        FUNC2(TS_F_DEF_TIME_CB, TS_R_TIME_SYSCALL_ERROR);
        FUNC1(ctx, TS_STATUS_REJECTION,
                                    "Time is not available.");
        FUNC0(ctx, TS_INFO_TIME_NOT_AVAILABLE);
        return 0;
    }
    *sec = tv.tv_sec;
    *usec = tv.tv_usec;

    return 1;
}