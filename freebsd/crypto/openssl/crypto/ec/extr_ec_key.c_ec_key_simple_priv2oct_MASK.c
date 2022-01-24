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
struct TYPE_3__ {int /*<<< orphan*/ * priv_key; int /*<<< orphan*/  group; } ;
typedef  TYPE_1__ EC_KEY ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  EC_F_EC_KEY_SIMPLE_PRIV2OCT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EC_R_BUFFER_TOO_SMALL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

size_t FUNC3(const EC_KEY *eckey,
                              unsigned char *buf, size_t len)
{
    size_t buf_len;

    buf_len = (FUNC1(eckey->group) + 7) / 8;
    if (eckey->priv_key == NULL)
        return 0;
    if (buf == NULL)
        return buf_len;
    else if (len < buf_len)
        return 0;

    /* Octetstring may need leading zeros if BN is to short */

    if (FUNC0(eckey->priv_key, buf, buf_len) == -1) {
        FUNC2(EC_F_EC_KEY_SIMPLE_PRIV2OCT, EC_R_BUFFER_TOO_SMALL);
        return 0;
    }

    return buf_len;
}