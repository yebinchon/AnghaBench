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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int crypto_box_HALF_NONCEBYTES ; 
 int FUNC0 () ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC3 () ; 

__attribute__((used)) static void
FUNC4(uint8_t *nonce)
{
    uint64_t ts;
    uint64_t tsn;
    uint32_t suffix;
    ts = FUNC0();
    // TODO? dnscrypt-wrapper does some logic with context->nonce_ts_last
    // unclear if we really need it, so skipping it for now.
    tsn = (ts << 10) | (FUNC3() & 0x3ff);
#if (BYTE_ORDER == LITTLE_ENDIAN)
    tsn =
        (((uint64_t)FUNC1((uint32_t)tsn)) << 32) | FUNC1((uint32_t)(tsn >> 32));
#endif
    FUNC2(nonce + crypto_box_HALF_NONCEBYTES, &tsn, 8);
    suffix = FUNC3();
    FUNC2(nonce + crypto_box_HALF_NONCEBYTES + 8, &suffix, 4);
}