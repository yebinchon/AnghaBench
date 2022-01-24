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
struct TYPE_5__ {int* count; int* state; } ;
typedef  TYPE_1__ isc_sha1_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned char final_0 ; 
 unsigned char final_200 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void
FUNC3(isc_sha1_t *context, unsigned char *digest) {
	unsigned int i;
	unsigned char finalcount[8];

	FUNC0(digest != 0);
	FUNC0(context != 0);

	for (i = 0; i < 8; i++) {
		/* Endian independent */
		finalcount[i] = (unsigned char)
			((context->count[(i >= 4 ? 0 : 1)]
			  >> ((3 - (i & 3)) * 8)) & 255);
	}

	FUNC1(context, &final_200, 1);
	while ((context->count[0] & 504) != 448)
		FUNC1(context, &final_0, 1);
	/* The next Update should cause a transform() */
	FUNC1(context, finalcount, 8);

	if (digest) {
		for (i = 0; i < 20; i++)
			digest[i] = (unsigned char)
				((context->state[i >> 2]
				  >> ((3 - (i & 3)) * 8)) & 255);
	}

	FUNC2(context, 0, sizeof(isc_sha1_t));
}