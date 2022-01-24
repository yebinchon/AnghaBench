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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {int rep3; int rep2; int rep1; int rep0; int dist_special; int /*<<< orphan*/ * dist_align; int /*<<< orphan*/  len; int /*<<< orphan*/ ** dist_slot; int /*<<< orphan*/  match_len_dec; int /*<<< orphan*/  state; } ;
struct xz_dec_lzma2 {TYPE_1__ lzma; int /*<<< orphan*/  rc; } ;

/* Variables and functions */
 int ALIGN_BITS ; 
 int DIST_MODEL_END ; 
 int DIST_MODEL_START ; 
 int DIST_SLOTS ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xz_dec_lzma2*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int) ; 

__attribute__((used)) static void FUNC6(struct xz_dec_lzma2 *s, uint32_t pos_state)
{
	uint16_t *probs;
	uint32_t dist_slot;
	uint32_t limit;

	FUNC2(&s->lzma.state);

	s->lzma.rep3 = s->lzma.rep2;
	s->lzma.rep2 = s->lzma.rep1;
	s->lzma.rep1 = s->lzma.rep0;

	FUNC1(s, &s->lzma.match_len_dec, pos_state);

	probs = s->lzma.dist_slot[FUNC0(s->lzma.len)];
	dist_slot = FUNC3(&s->rc, probs, DIST_SLOTS) - DIST_SLOTS;

	if (dist_slot < DIST_MODEL_START) {
		s->lzma.rep0 = dist_slot;
	} else {
		limit = (dist_slot >> 1) - 1;
		s->lzma.rep0 = 2 + (dist_slot & 1);

		if (dist_slot < DIST_MODEL_END) {
			s->lzma.rep0 <<= limit;
			probs = s->lzma.dist_special + s->lzma.rep0
					- dist_slot - 1;
			FUNC4(&s->rc, probs,
					&s->lzma.rep0, limit);
		} else {
			FUNC5(&s->rc, &s->lzma.rep0, limit - ALIGN_BITS);
			s->lzma.rep0 <<= ALIGN_BITS;
			FUNC4(&s->rc, s->lzma.dist_align,
					&s->lzma.rep0, ALIGN_BITS);
		}
	}
}