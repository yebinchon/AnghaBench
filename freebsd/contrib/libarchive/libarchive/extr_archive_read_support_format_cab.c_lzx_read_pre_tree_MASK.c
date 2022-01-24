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
struct lzx_stream {struct lzx_dec* ds; } ;
struct TYPE_2__ {int len_size; size_t* bitlen; int /*<<< orphan*/ * freq; } ;
struct lzx_br {int dummy; } ;
struct lzx_dec {int loop; TYPE_1__ pt; struct lzx_br br; } ;

/* Variables and functions */
 size_t FUNC0 (struct lzx_br*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct lzx_br*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct lzx_stream*,struct lzx_br*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct lzx_stream *strm)
{
	struct lzx_dec *ds = strm->ds;
	struct lzx_br *br = &(ds->br);
	int i;

	if (ds->loop == 0)
		FUNC3(ds->pt.freq, 0, sizeof(ds->pt.freq));
	for (i = ds->loop; i < ds->pt.len_size; i++) {
		if (!FUNC2(strm, br, 4)) {
			ds->loop = i;
			return (0);
		}
		ds->pt.bitlen[i] = FUNC0(br, 4);
		ds->pt.freq[ds->pt.bitlen[i]]++;
		FUNC1(br, 4);
	}
	ds->loop = i;
	return (1);
}