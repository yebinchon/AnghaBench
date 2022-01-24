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
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  TS_F_DEF_SERIAL_CB ; 
 int /*<<< orphan*/  FUNC2 (struct TS_resp_ctx*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TS_STATUS_REJECTION ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ASN1_INTEGER *FUNC4(struct TS_resp_ctx *ctx, void *data)
{
    ASN1_INTEGER *serial = FUNC0();

    if (serial == NULL)
        goto err;
    if (!FUNC1(serial, 1))
        goto err;
    return serial;

 err:
    FUNC3(TS_F_DEF_SERIAL_CB, ERR_R_MALLOC_FAILURE);
    FUNC2(ctx, TS_STATUS_REJECTION,
                                "Error during serial number generation.");
    return NULL;
}