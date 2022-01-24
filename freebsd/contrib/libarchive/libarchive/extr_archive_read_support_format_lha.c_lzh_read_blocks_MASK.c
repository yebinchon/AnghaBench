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
struct lzh_stream {struct lzh_dec* ds; } ;
struct TYPE_4__ {int len_size; int len_bits; int len_avail; int* freq; int* bitlen; int max_bits; } ;
struct lzh_br {int dummy; } ;
struct lzh_dec {int state; int literal_pt_len_size; int literal_pt_len_bits; int reading_position; int loop; int pos_pt_len_size; int pos_pt_len_bits; int error; TYPE_1__ pt; TYPE_1__ lt; void* blocks_avail; int /*<<< orphan*/  w_pos; struct lzh_br br; } ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_OK ; 
#define  ST_GET_LITERAL 137 
#define  ST_RD_BLOCK 136 
#define  ST_RD_LITERAL_1 135 
#define  ST_RD_LITERAL_2 134 
#define  ST_RD_LITERAL_3 133 
#define  ST_RD_POS_DATA_1 132 
#define  ST_RD_PT_1 131 
#define  ST_RD_PT_2 130 
#define  ST_RD_PT_3 129 
#define  ST_RD_PT_4 128 
 void* FUNC0 (struct lzh_br*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct lzh_br*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct lzh_br*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lzh_stream*,struct lzh_br*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lzh_stream*,struct lzh_br*,int) ; 
 int FUNC5 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct lzh_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 void* FUNC9 (struct lzh_stream*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC11(struct lzh_stream *strm, int last)
{
	struct lzh_dec *ds = strm->ds;
	struct lzh_br *br = &(ds->br);
	int c = 0, i;
	unsigned rbits;

	for (;;) {
		switch (ds->state) {
		case ST_RD_BLOCK:
			/*
			 * Read a block number indicates how many blocks
			 * we will handle. The block is composed of a
			 * literal and a match, sometimes a literal only
			 * in particular, there are no reference data at
			 * the beginning of the decompression.
			 */
			if (!FUNC4(strm, br, 16)) {
				if (!last)
					/* We need following data. */
					return (ARCHIVE_OK);
				if (FUNC2(br, 8)) {
					/*
					 * It seems there are extra bits.
					 *  1. Compressed data is broken.
					 *  2. `last' flag does not properly
					 *     set.
					 */
					goto failed;
				}
				if (ds->w_pos > 0) {
					FUNC6(strm, ds->w_pos);
					ds->w_pos = 0;
					return (ARCHIVE_OK);
				}
				/* End of compressed data; we have completely
				 * handled all compressed data. */
				return (ARCHIVE_EOF);
			}
			ds->blocks_avail = FUNC0(br, 16);
			if (ds->blocks_avail == 0)
				goto failed;
			FUNC1(br, 16);
			/*
			 * Read a literal table compressed in huffman
			 * coding.
			 */
			ds->pt.len_size = ds->literal_pt_len_size;
			ds->pt.len_bits = ds->literal_pt_len_bits;
			ds->reading_position = 0;
			/* FALL THROUGH */
		case ST_RD_PT_1:
			/* Note: ST_RD_PT_1, ST_RD_PT_2 and ST_RD_PT_4 are
			 * used in reading both a literal table and a
			 * position table. */
			if (!FUNC3(strm, br, ds->pt.len_bits)) {
				if (last)
					goto failed;/* Truncated data. */
				ds->state = ST_RD_PT_1;
				return (ARCHIVE_OK);
			}
			ds->pt.len_avail = FUNC0(br, ds->pt.len_bits);
			FUNC1(br, ds->pt.len_bits);
			/* FALL THROUGH */
		case ST_RD_PT_2:
			if (ds->pt.len_avail == 0) {
				/* There is no bitlen. */
				if (!FUNC3(strm, br,
				    ds->pt.len_bits)) {
					if (last)
						goto failed;/* Truncated data.*/
					ds->state = ST_RD_PT_2;
					return (ARCHIVE_OK);
				}
				if (!FUNC7(&(ds->pt),
				    FUNC0(br, ds->pt.len_bits)))
					goto failed;/* Invalid data. */
				FUNC1(br, ds->pt.len_bits);
				if (ds->reading_position)
					ds->state = ST_GET_LITERAL;
				else
					ds->state = ST_RD_LITERAL_1;
				break;
			} else if (ds->pt.len_avail > ds->pt.len_size)
				goto failed;/* Invalid data. */
			ds->loop = 0;
			FUNC10(ds->pt.freq, 0, sizeof(ds->pt.freq));
			if (ds->pt.len_avail < 3 ||
			    ds->pt.len_size == ds->pos_pt_len_size) {
				ds->state = ST_RD_PT_4;
				break;
			}
			/* FALL THROUGH */
		case ST_RD_PT_3:
			ds->loop = FUNC9(strm, ds->loop, 3);
			if (ds->loop < 3) {
				if (ds->loop < 0 || last)
					goto failed;/* Invalid data. */
				/* Not completed, get following data. */
				ds->state = ST_RD_PT_3;
				return (ARCHIVE_OK);
			}
			/* There are some null in bitlen of the literal. */
			if (!FUNC3(strm, br, 2)) {
				if (last)
					goto failed;/* Truncated data. */
				ds->state = ST_RD_PT_3;
				return (ARCHIVE_OK);
			}
			c = FUNC0(br, 2);
			FUNC1(br, 2);
			if (c > ds->pt.len_avail - 3)
				goto failed;/* Invalid data. */
			for (i = 3; c-- > 0 ;)
				ds->pt.bitlen[i++] = 0;
			ds->loop = i;
			/* FALL THROUGH */
		case ST_RD_PT_4:
			ds->loop = FUNC9(strm, ds->loop,
			    ds->pt.len_avail);
			if (ds->loop < ds->pt.len_avail) {
				if (ds->loop < 0 || last)
					goto failed;/* Invalid data. */
				/* Not completed, get following data. */
				ds->state = ST_RD_PT_4;
				return (ARCHIVE_OK);
			}
			if (!FUNC8(&(ds->pt)))
				goto failed;/* Invalid data */
			if (ds->reading_position) {
				ds->state = ST_GET_LITERAL;
				break;
			}
			/* FALL THROUGH */
		case ST_RD_LITERAL_1:
			if (!FUNC3(strm, br, ds->lt.len_bits)) {
				if (last)
					goto failed;/* Truncated data. */
				ds->state = ST_RD_LITERAL_1;
				return (ARCHIVE_OK);
			}
			ds->lt.len_avail = FUNC0(br, ds->lt.len_bits);
			FUNC1(br, ds->lt.len_bits);
			/* FALL THROUGH */
		case ST_RD_LITERAL_2:
			if (ds->lt.len_avail == 0) {
				/* There is no bitlen. */
				if (!FUNC3(strm, br,
				    ds->lt.len_bits)) {
					if (last)
						goto failed;/* Truncated data.*/
					ds->state = ST_RD_LITERAL_2;
					return (ARCHIVE_OK);
				}
				if (!FUNC7(&(ds->lt),
				    FUNC0(br, ds->lt.len_bits)))
					goto failed;/* Invalid data */
				FUNC1(br, ds->lt.len_bits);
				ds->state = ST_RD_POS_DATA_1;
				break;
			} else if (ds->lt.len_avail > ds->lt.len_size)
				goto failed;/* Invalid data */
			ds->loop = 0;
			FUNC10(ds->lt.freq, 0, sizeof(ds->lt.freq));
			/* FALL THROUGH */
		case ST_RD_LITERAL_3:
			i = ds->loop;
			while (i < ds->lt.len_avail) {
				if (!FUNC3(strm, br,
				    ds->pt.max_bits)) {
					if (last)
						goto failed;/* Truncated data.*/
					ds->loop = i;
					ds->state = ST_RD_LITERAL_3;
					return (ARCHIVE_OK);
				}
				rbits = FUNC0(br, ds->pt.max_bits);
				c = FUNC5(&(ds->pt), rbits);
				if (c > 2) {
					/* Note: 'c' will never be more than
					 * eighteen since it's limited by
					 * PT_BITLEN_SIZE, which is being set
					 * to ds->pt.len_size through
					 * ds->literal_pt_len_size. */
					FUNC1(br, ds->pt.bitlen[c]);
					c -= 2;
					ds->lt.freq[c]++;
					ds->lt.bitlen[i++] = c;
				} else if (c == 0) {
					FUNC1(br, ds->pt.bitlen[c]);
					ds->lt.bitlen[i++] = 0;
				} else {
					/* c == 1 or c == 2 */
					int n = (c == 1)?4:9;
					if (!FUNC3(strm, br,
					     ds->pt.bitlen[c] + n)) {
						if (last) /* Truncated data. */
							goto failed;
						ds->loop = i;
						ds->state = ST_RD_LITERAL_3;
						return (ARCHIVE_OK);
					}
					FUNC1(br, ds->pt.bitlen[c]);
					c = FUNC0(br, n);
					FUNC1(br, n);
					c += (n == 4)?3:20;
					if (i + c > ds->lt.len_avail)
						goto failed;/* Invalid data */
					FUNC10(&(ds->lt.bitlen[i]), 0, c);
					i += c;
				}
			}
			if (i > ds->lt.len_avail ||
			    !FUNC8(&(ds->lt)))
				goto failed;/* Invalid data */
			/* FALL THROUGH */
		case ST_RD_POS_DATA_1:
			/*
			 * Read a position table compressed in huffman
			 * coding.
			 */
			ds->pt.len_size = ds->pos_pt_len_size;
			ds->pt.len_bits = ds->pos_pt_len_bits;
			ds->reading_position = 1;
			ds->state = ST_RD_PT_1;
			break;
		case ST_GET_LITERAL:
			return (100);
		}
	}
failed:
	return (ds->error = ARCHIVE_FAILED);
}