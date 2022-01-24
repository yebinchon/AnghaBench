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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int u_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static u_int
FUNC1(void *buf, u_int c)
{
	uint8_t *b;
	int count;

	b = buf;

	for (count = 0; count < c; count++)
		b[count] = FUNC0();

	/* printf("returning %d bytes of pure randomness\n", c); */
	return (c);
}