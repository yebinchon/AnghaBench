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
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {size_t limit; size_t pos; int full; int size; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_1__ lzma_dict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (size_t const,scalar_t__) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static inline bool
FUNC6(lzma_dict *dict, uint32_t distance, uint32_t *len)
{
	// Don't write past the end of the dictionary.
	const size_t dict_avail = dict->limit - dict->pos;
	uint32_t left = FUNC4(dict_avail, *len);
	*len -= left;

	// Repeat a block of data from the history. Because memcpy() is faster
	// than copying byte by byte in a loop, the copying process gets split
	// into three cases.
	if (distance < left) {
		// Source and target areas overlap, thus we can't use
		// memcpy() nor even memmove() safely.
		do {
			dict->buf[dict->pos] = FUNC1(dict, distance);
			++dict->pos;
		} while (--left > 0);

	} else if (distance < dict->pos) {
		// The easiest and fastest case
		FUNC2(dict->buf + dict->pos,
				dict->buf + dict->pos - distance - 1,
				left);
		dict->pos += left;

	} else {
		// The bigger the dictionary, the more rare this
		// case occurs. We need to "wrap" the dict, thus
		// we might need two memcpy() to copy all the data.
		FUNC0(dict->full == dict->size);
		const uint32_t copy_pos
				= dict->pos - distance - 1 + dict->size;
		uint32_t copy_size = dict->size - copy_pos;

		if (copy_size < left) {
			FUNC3(dict->buf + dict->pos, dict->buf + copy_pos,
					copy_size);
			dict->pos += copy_size;
			copy_size = left - copy_size;
			FUNC2(dict->buf + dict->pos, dict->buf, copy_size);
			dict->pos += copy_size;
		} else {
			FUNC3(dict->buf + dict->pos, dict->buf + copy_pos,
					left);
			dict->pos += left;
		}
	}

	// Update how full the dictionary is.
	if (dict->full < dict->pos)
		dict->full = dict->pos;

	return FUNC5(*len != 0);
}