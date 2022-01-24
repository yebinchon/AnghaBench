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
typedef  scalar_t__ uint32_t ;
struct lzx_stream {struct lzx_dec* ds; } ;
struct lzx_dec {scalar_t__ translation_size; int /*<<< orphan*/  translation; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,scalar_t__) ; 
 unsigned char* FUNC2 (unsigned char*,int,int) ; 

__attribute__((used)) static void
FUNC3(struct lzx_stream *strm, void *p, size_t size, uint32_t offset)
{
	struct lzx_dec *ds = strm->ds;
	unsigned char *b, *end;

	if (!ds->translation || size <= 10)
		return;
	b = p;
	end = b + size - 10;
	while (b < end && (b = FUNC2(b, 0xE8, end - b)) != NULL) {
		size_t i = b - (unsigned char *)p;
		int32_t cp, displacement, value;

		cp = (int32_t)(offset + (uint32_t)i);
		value = FUNC0(&b[1]);
		if (value >= -cp && value < (int32_t)ds->translation_size) {
			if (value >= 0)
				displacement = value - cp;
			else
				displacement = value + ds->translation_size;
			FUNC1(&b[1], (uint32_t)displacement);
		}
		b += 5;
	}
}