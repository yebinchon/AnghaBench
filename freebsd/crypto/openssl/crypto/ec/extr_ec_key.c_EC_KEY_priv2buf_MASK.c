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
typedef  int /*<<< orphan*/  EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  EC_F_EC_KEY_PRIV2BUF ; 
 size_t FUNC0 (int /*<<< orphan*/  const*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (size_t) ; 

size_t FUNC4(const EC_KEY *eckey, unsigned char **pbuf)
{
    size_t len;
    unsigned char *buf;

    len = FUNC0(eckey, NULL, 0);
    if (len == 0)
        return 0;
    if ((buf = FUNC3(len)) == NULL) {
        FUNC1(EC_F_EC_KEY_PRIV2BUF, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    len = FUNC0(eckey, buf, len);
    if (len == 0) {
        FUNC2(buf);
        return 0;
    }
    *pbuf = buf;
    return len;
}