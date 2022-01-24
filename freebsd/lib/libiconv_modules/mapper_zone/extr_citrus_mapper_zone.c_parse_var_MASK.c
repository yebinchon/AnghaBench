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
typedef  int uint32_t ;
struct _parse_state {int ps_u_imm; scalar_t__ ps_s_imm; int /*<<< orphan*/  ps_state; } ;
struct _memstream {int dummy; } ;
struct TYPE_3__ {scalar_t__ z_end; scalar_t__ z_begin; } ;
struct _citrus_mapper_zone {int mz_col_bits; scalar_t__ mz_row_offset; TYPE_1__ mz_row; scalar_t__ mz_col_offset; TYPE_1__ mz_col; } ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  S_BEGIN ; 
 int /*<<< orphan*/  S_OFFSET ; 
 char T_IMM ; 
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__,int) ; 
 char FUNC1 (struct _memstream*,struct _parse_state*) ; 
 scalar_t__ FUNC2 (struct _memstream*,struct _parse_state*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3(struct _citrus_mapper_zone *mz, struct _memstream *ms)
{
	struct _parse_state ps;
	uint32_t colmax, rowmax;
	int isrc, ret;

	ps.ps_state = S_BEGIN;

	if (FUNC2(ms, &ps, &mz->mz_col))
		return (-1);

	ret = FUNC1(ms, &ps);
	if (ret == '/') {
		/* rowzone / colzone / bits */
		isrc = 1;
		mz->mz_row = mz->mz_col;

		if (FUNC2(ms, &ps, &mz->mz_col))
			return (-1);
		if (FUNC1(ms, &ps) != '/')
			return (-1);
		if (FUNC1(ms, &ps) != T_IMM)
			return (-1);
		mz->mz_col_bits = ps.ps_u_imm;
		if (mz->mz_col_bits < 0 || mz->mz_col_bits > 32)
			return (-1);
		ret = FUNC1(ms, &ps);
	} else {
		/* colzone */
		isrc = 0;
		mz->mz_col_bits = 32;
		mz->mz_row.z_begin = mz->mz_row.z_end = 0;
	}
	if (ret == ':') {
		/* offset */
		ps.ps_state = S_OFFSET;
		if (FUNC1(ms, &ps) != T_IMM)
			return (-1);
		mz->mz_col_offset = ps.ps_s_imm;
		if (isrc) {
			/* row/col */
			mz->mz_row_offset = mz->mz_col_offset;
			if (FUNC1(ms, &ps) != '/')
				return (-1);
			if (FUNC1(ms, &ps) != T_IMM)
				return (-1);
			mz->mz_col_offset = ps.ps_s_imm;
		} else
			mz->mz_row_offset = 0;
		ret = FUNC1(ms, &ps);
	}
	if (ret != EOF)
		return (-1);

	/* sanity check */
	colmax = (mz->mz_col_bits == 32) ? 0 : 1 << mz->mz_col_bits;
	rowmax = (mz->mz_col_bits == 0) ? 0 : 1 << (32-mz->mz_col_bits);
	if (FUNC0(&mz->mz_col, mz->mz_col_offset, colmax))
		return (-1);
	if (FUNC0(&mz->mz_row, mz->mz_row_offset, rowmax))
		return (-1);

	return (0);
}