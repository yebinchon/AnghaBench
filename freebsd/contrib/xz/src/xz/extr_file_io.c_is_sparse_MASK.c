#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_3__ {scalar_t__* u64; } ;
typedef  TYPE_1__ io_buf ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__*) ; 
 int IO_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static bool
FUNC2(const io_buf *buf)
{
	FUNC1(IO_BUFFER_SIZE % sizeof(uint64_t) == 0);

	for (size_t i = 0; i < FUNC0(buf->u64); ++i)
		if (buf->u64[i] != 0)
			return false;

	return true;
}