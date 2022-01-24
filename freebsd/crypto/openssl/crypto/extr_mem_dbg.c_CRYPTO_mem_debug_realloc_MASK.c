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
struct TYPE_5__ {size_t num; int /*<<< orphan*/  array; int /*<<< orphan*/  array_siz; void* addr; } ;
typedef  TYPE_1__ MEM ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_MEM_CHECK_DISABLE ; 
 int /*<<< orphan*/  CRYPTO_MEM_CHECK_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  mh ; 

void FUNC7(void *addr1, void *addr2, size_t num,
                              int before_p, const char *file, int line)
{
    MEM m, *mp;

    switch (before_p) {
    case 0:
        break;
    case 1:
        if (addr2 == NULL)
            break;

        if (addr1 == NULL) {
            FUNC1(addr2, num, 128 | before_p, file, line);
            break;
        }

        if (FUNC6()) {
            FUNC0(CRYPTO_MEM_CHECK_DISABLE);

            m.addr = addr1;
            mp = FUNC4(mh, &m);
            if (mp != NULL) {
                mp->addr = addr2;
                mp->num = num;
#ifndef OPENSSL_NO_CRYPTO_MDEBUG_BACKTRACE
                mp->array_siz = FUNC3(mp->array, FUNC2(mp->array));
#endif
                (void)FUNC5(mh, mp);
            }

            FUNC0(CRYPTO_MEM_CHECK_ENABLE);
        }
        break;
    }
    return;
}