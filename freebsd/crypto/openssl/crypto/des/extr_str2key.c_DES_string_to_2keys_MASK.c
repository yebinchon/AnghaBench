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
typedef  int /*<<< orphan*/  ks ;
typedef  int /*<<< orphan*/  DES_key_schedule ;
typedef  unsigned char* DES_cblock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char const*,unsigned char**,int,int /*<<< orphan*/ *,unsigned char**) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char**,unsigned char**,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char**,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (char const*) ; 

void FUNC7(const char *str, DES_cblock *key1, DES_cblock *key2)
{
    DES_key_schedule ks;
    int i, length;

    FUNC5(key1, 0, 8);
    FUNC5(key2, 0, 8);
    length = FUNC6(str);
    for (i = 0; i < length; i++) {
        register unsigned char j = str[i];

        if ((i % 32) < 16) {
            if ((i % 16) < 8)
                (*key1)[i % 8] ^= (j << 1);
            else
                (*key2)[i % 8] ^= (j << 1);
        } else {
            j = ((j << 4) & 0xf0) | ((j >> 4) & 0x0f);
            j = ((j << 2) & 0xcc) | ((j >> 2) & 0x33);
            j = ((j << 1) & 0xaa) | ((j >> 1) & 0x55);
            if ((i % 16) < 8)
                (*key1)[7 - (i % 8)] ^= j;
            else
                (*key2)[7 - (i % 8)] ^= j;
        }
    }
    if (length <= 8)
        FUNC4(key2, key1, 8);
    FUNC2(key1);
    FUNC2(key2);
    FUNC1(key1, &ks);
    FUNC0((const unsigned char *)str, key1, length, &ks, key1);
    FUNC1(key2, &ks);
    FUNC0((const unsigned char *)str, key2, length, &ks, key2);
    FUNC3(&ks, sizeof(ks));
    FUNC2(key1);
    FUNC2(key2);
}