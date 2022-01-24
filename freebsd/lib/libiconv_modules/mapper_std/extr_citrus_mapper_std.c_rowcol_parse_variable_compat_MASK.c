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
typedef  int uint32_t ;
struct _region {int dummy; } ;
struct _citrus_mapper_std_rowcol_info_compat_x {int /*<<< orphan*/  rcx_src_col_end; int /*<<< orphan*/  rcx_src_col_begin; int /*<<< orphan*/  rcx_src_row_end; int /*<<< orphan*/  rcx_src_row_begin; int /*<<< orphan*/  rcx_src_col_bits; int /*<<< orphan*/  rcx_dst_unit_bits; int /*<<< orphan*/  rcx_dst_invalid; } ;
struct _citrus_mapper_std_rowcol {int rc_src_rowcol_bits; int rc_src_rowcol_mask; int rc_src_rowcol_len; struct _citrus_mapper_std_linear_zone* rc_src_rowcol; void* rc_dst_unit_bits; void* rc_dst_invalid; } ;
struct _citrus_mapper_std_linear_zone {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct _citrus_mapper_std_rowcol_info_compat_x* FUNC0 (struct _region*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct _citrus_mapper_std_linear_zone*) ; 
 struct _citrus_mapper_std_linear_zone* FUNC3 (int) ; 
 int FUNC4 (struct _citrus_mapper_std_linear_zone*,int,int) ; 

__attribute__((used)) static __inline int
FUNC5(struct _citrus_mapper_std_rowcol *rc,
    struct _region *r)
{
	const struct _citrus_mapper_std_rowcol_info_compat_x *rcx;
	struct _citrus_mapper_std_linear_zone *lz;
	uint32_t m, n;
	int ret;

	rcx = FUNC0(r);

	rc->rc_dst_invalid = FUNC1(rcx->rcx_dst_invalid);
	rc->rc_dst_unit_bits = FUNC1(rcx->rcx_dst_unit_bits);
	m = FUNC1(rcx->rcx_src_col_bits);
	n = 1U << (m - 1);
	n |= n - 1;
	rc->rc_src_rowcol_bits = m;
	rc->rc_src_rowcol_mask = n;

	rc->rc_src_rowcol = FUNC3(2 *
	    sizeof(*rc->rc_src_rowcol));
	if (rc->rc_src_rowcol == NULL)
		return (ENOMEM);
	lz = rc->rc_src_rowcol;
	rc->rc_src_rowcol_len = 1;
	m = FUNC1(rcx->rcx_src_row_begin);
	n = FUNC1(rcx->rcx_src_row_end);
	if (m + n > 0) {
		ret = FUNC4(lz, m, n);
		if (ret != 0) {
			FUNC2(rc->rc_src_rowcol);
			rc->rc_src_rowcol = NULL;
			return (ret);
		}
		++rc->rc_src_rowcol_len, ++lz;
	}
	m = FUNC1(rcx->rcx_src_col_begin);
	n = FUNC1(rcx->rcx_src_col_end);

	return (FUNC4(lz, m, n));
}