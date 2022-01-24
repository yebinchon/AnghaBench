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
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static void
FUNC2(uint16_t blocknum, const char* contents, size_t contents_len)
{
	char buffer[1024];

	buffer[0] = 0;	/* DATA opcode high byte */
	buffer[1] = 3;	/* DATA opcode low byte */
	buffer[2] = blocknum >> 8;
	buffer[3] = blocknum & 0xFF;
	FUNC0(&buffer[4], contents, contents_len);
	FUNC1(buffer, 4 + contents_len);
}