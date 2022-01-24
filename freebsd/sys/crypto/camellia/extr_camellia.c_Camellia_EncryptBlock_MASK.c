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
 int /*<<< orphan*/  FUNC0 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

void
FUNC4(const int keyBitLength, 
		      const unsigned char *plaintext, 
		      const uint32_t *subkey,
		      unsigned char *ciphertext)
{
    uint32_t tmp[4];

    tmp[0] = FUNC0(plaintext);
    tmp[1] = FUNC0(plaintext + 4);
    tmp[2] = FUNC0(plaintext + 8);
    tmp[3] = FUNC0(plaintext + 12);

    switch (keyBitLength) {
    case 128:
	FUNC2(subkey, tmp);
	break;
    case 192:
	/* fall through */
    case 256:
	FUNC3(subkey, tmp);
	break;
    default:
	break;
    }

    FUNC1(ciphertext,    tmp[0]);
    FUNC1(ciphertext+4,  tmp[1]);
    FUNC1(ciphertext+8,  tmp[2]);
    FUNC1(ciphertext+12, tmp[3]);
}