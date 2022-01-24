#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* d1; } ;
struct TYPE_6__ {size_t mtu; } ;
typedef  int /*<<< orphan*/  SSL_CIPHER ;
typedef  TYPE_2__ SSL ;

/* Variables and functions */
 size_t DTLS1_RT_HEADER_LENGTH ; 
 scalar_t__ FUNC0 (TYPE_2__ const*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,size_t*,size_t*,size_t*,size_t*) ; 

size_t FUNC3(const SSL *s)
{
    size_t mac_overhead, int_overhead, blocksize, ext_overhead;
    const SSL_CIPHER *ciph = FUNC1(s);
    size_t mtu = s->d1->mtu;

    if (ciph == NULL)
        return 0;

    if (!FUNC2(ciph, &mac_overhead, &int_overhead,
                                 &blocksize, &ext_overhead))
        return 0;

    if (FUNC0(s))
        ext_overhead += mac_overhead;
    else
        int_overhead += mac_overhead;

    /* Subtract external overhead (e.g. IV/nonce, separate MAC) */
    if (ext_overhead + DTLS1_RT_HEADER_LENGTH >= mtu)
        return 0;
    mtu -= ext_overhead + DTLS1_RT_HEADER_LENGTH;

    /* Round encrypted payload down to cipher block size (for CBC etc.)
     * No check for overflow since 'mtu % blocksize' cannot exceed mtu. */
    if (blocksize)
        mtu -= (mtu % blocksize);

    /* Subtract internal overhead (e.g. CBC padding len byte) */
    if (int_overhead >= mtu)
        return 0;
    mtu -= int_overhead;

    return mtu;
}