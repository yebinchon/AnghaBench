#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* noDictIDFlag; void* checksumFlag; void* contentSizeFlag; } ;
typedef  TYPE_1__ ZSTD_frameParameters ;
typedef  int /*<<< orphan*/  FUZZ_dataProducer_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

ZSTD_frameParameters FUNC1(FUZZ_dataProducer_t *producer)
{
    /* Select frame parameters */
    ZSTD_frameParameters fParams;
    fParams.contentSizeFlag = FUNC0(producer, 0, 1);
    fParams.checksumFlag = FUNC0(producer, 0, 1);
    fParams.noDictIDFlag = FUNC0(producer, 0, 1);
    return fParams;
}