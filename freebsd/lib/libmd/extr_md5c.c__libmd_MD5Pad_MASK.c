#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* count; } ;
typedef  TYPE_1__ MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned char*,int) ; 
 unsigned char* PADDING ; 

void
FUNC2 (MD5_CTX *context)
{
	unsigned char bits[8];
	unsigned int idx, padLen;

	/* Save number of bits */
	FUNC0 (bits, context->count, 8);

	/* Pad out to 56 mod 64. */
	idx = (unsigned int)((context->count[0] >> 3) & 0x3f);
	padLen = (idx < 56) ? (56 - idx) : (120 - idx);
	FUNC1 (context, PADDING, padLen);

	/* Append length (before padding) */
	FUNC1 (context, bits, 8);
}