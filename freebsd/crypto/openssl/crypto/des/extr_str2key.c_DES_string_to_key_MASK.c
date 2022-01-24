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
 int /*<<< orphan*/  FUNC4 (unsigned char**,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (char const*) ; 

void FUNC6(const char *str, DES_cblock *key)
{
    DES_key_schedule ks;
    int i, length;

    FUNC4(key, 0, 8);
    length = FUNC5(str);
    for (i = 0; i < length; i++) {
        register unsigned char j = str[i];

        if ((i % 16) < 8)
            (*key)[i % 8] ^= (j << 1);
        else {
            /* Reverse the bit order 05/05/92 eay */
            j = ((j << 4) & 0xf0) | ((j >> 4) & 0x0f);
            j = ((j << 2) & 0xcc) | ((j >> 2) & 0x33);
            j = ((j << 1) & 0xaa) | ((j >> 1) & 0x55);
            (*key)[7 - (i % 8)] ^= j;
        }
    }
    FUNC2(key);
    FUNC1(key, &ks);
    FUNC0((const unsigned char *)str, key, length, &ks, key);
    FUNC3(&ks, sizeof(ks));
    FUNC2(key);
}