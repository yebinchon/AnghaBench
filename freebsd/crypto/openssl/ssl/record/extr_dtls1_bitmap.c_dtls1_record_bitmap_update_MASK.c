#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned int map; int /*<<< orphan*/  max_seq_num; } ;
struct TYPE_5__ {int /*<<< orphan*/  rlayer; } ;
typedef  TYPE_1__ SSL ;
typedef  TYPE_2__ DTLS1_BITMAP ;

/* Variables and functions */
 unsigned char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SEQ_NUM_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned char const*,int /*<<< orphan*/ ) ; 

void FUNC3(SSL *s, DTLS1_BITMAP *bitmap)
{
    int cmp;
    unsigned int shift;
    const unsigned char *seq = FUNC0(&s->rlayer);

    cmp = FUNC2(seq, bitmap->max_seq_num);
    if (cmp > 0) {
        shift = cmp;
        if (shift < sizeof(bitmap->map) * 8)
            bitmap->map <<= shift, bitmap->map |= 1UL;
        else
            bitmap->map = 1UL;
        FUNC1(bitmap->max_seq_num, seq, SEQ_NUM_SIZE);
    } else {
        shift = -cmp;
        if (shift < sizeof(bitmap->map) * 8)
            bitmap->map |= 1UL << shift;
    }
}