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
struct TS_resp_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  X509_EXTENSION ;

/* Variables and functions */
 int /*<<< orphan*/  TS_INFO_UNACCEPTED_EXTENSION ; 
 int /*<<< orphan*/  FUNC0 (struct TS_resp_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct TS_resp_ctx*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TS_STATUS_REJECTION ; 

__attribute__((used)) static int FUNC2(struct TS_resp_ctx *ctx, X509_EXTENSION *ext,
                            void *data)
{
    FUNC1(ctx, TS_STATUS_REJECTION,
                                "Unsupported extension.");
    FUNC0(ctx, TS_INFO_UNACCEPTED_EXTENSION);
    return 0;
}