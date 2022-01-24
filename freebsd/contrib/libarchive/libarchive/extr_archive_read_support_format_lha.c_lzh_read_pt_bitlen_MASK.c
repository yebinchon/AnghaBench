#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct lzh_stream {struct lzh_dec* ds; } ;
struct TYPE_2__ {int* bitlen; int /*<<< orphan*/ * freq; } ;
struct lzh_br {int dummy; } ;
struct lzh_dec {TYPE_1__ pt; struct lzh_br br; } ;

/* Variables and functions */
 int* bitlen_tbl ; 
 int FUNC0 (struct lzh_br*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct lzh_br*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct lzh_stream*,struct lzh_br*,int) ; 

__attribute__((used)) static int
FUNC3(struct lzh_stream *strm, int start, int end)
{
	struct lzh_dec *ds = strm->ds;
	struct lzh_br *br = &(ds->br);
	int c, i;

	for (i = start; i < end; ) {
		/*
		 *  bit pattern     the number we need
		 *     000           ->  0
		 *     001           ->  1
		 *     010           ->  2
		 *     ...
		 *     110           ->  6
		 *     1110          ->  7
		 *     11110         ->  8
		 *     ...
		 *     1111111111110 ->  16
		 */
		if (!FUNC2(strm, br, 3))
			return (i);
		if ((c = FUNC0(br, 3)) == 7) {
			if (!FUNC2(strm, br, 13))
				return (i);
			c = bitlen_tbl[FUNC0(br, 13) & 0x3FF];
			if (c)
				FUNC1(br, c - 3);
			else
				return (-1);/* Invalid data. */
		} else
			FUNC1(br, 3);
		ds->pt.bitlen[i++] = c;
		ds->pt.freq[c]++;
	}
	return (i);
}