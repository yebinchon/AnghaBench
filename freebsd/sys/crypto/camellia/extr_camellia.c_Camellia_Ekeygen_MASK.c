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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const*,int /*<<< orphan*/ *) ; 

void
FUNC4(const int keyBitLength, 
		 const unsigned char *rawKey, 
		 uint32_t *subkey)
{
    FUNC0(keyBitLength == 128 || keyBitLength == 192 || keyBitLength == 256,
	    ("Invalid key size (%d).", keyBitLength));

    switch(keyBitLength) {
    case 128:
	FUNC1(rawKey, subkey);
	break;
    case 192:
	FUNC2(rawKey, subkey);
	break;
    case 256:
	FUNC3(rawKey, subkey);
	break;
    default:
	break;
    }
}