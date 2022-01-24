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
typedef  size_t uint32_t ;
struct xz_buf {scalar_t__ in_pos; scalar_t__ in_size; scalar_t__ out_pos; scalar_t__ out_size; scalar_t__ in; size_t out; } ;
struct dictionary {size_t end; size_t pos; size_t buf; scalar_t__ full; scalar_t__ start; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t,scalar_t__,size_t) ; 
 size_t FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct dictionary *dict, struct xz_buf *b,
			      uint32_t *left)
{
	size_t copy_size;

	while (*left > 0 && b->in_pos < b->in_size
			&& b->out_pos < b->out_size) {
		copy_size = FUNC2(b->in_size - b->in_pos,
				b->out_size - b->out_pos);
		if (copy_size > dict->end - dict->pos)
			copy_size = dict->end - dict->pos;
		if (copy_size > *left)
			copy_size = *left;

		*left -= copy_size;

		FUNC1(dict->buf + dict->pos, b->in + b->in_pos, copy_size);
		dict->pos += copy_size;

		if (dict->full < dict->pos)
			dict->full = dict->pos;

		if (FUNC0(dict->mode)) {
			if (dict->pos == dict->end)
				dict->pos = 0;

			FUNC1(b->out + b->out_pos, b->in + b->in_pos,
					copy_size);
		}

		dict->start = dict->pos;

		b->out_pos += copy_size;
		b->in_pos += copy_size;
	}
}