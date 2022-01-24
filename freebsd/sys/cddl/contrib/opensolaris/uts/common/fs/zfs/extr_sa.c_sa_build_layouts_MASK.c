#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_8__ ;
typedef  struct TYPE_34__   TYPE_6__ ;
typedef  struct TYPE_33__   TYPE_5__ ;
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;
typedef  struct TYPE_28__   TYPE_12__ ;

/* Type definitions */
typedef  unsigned long long uint64_t ;
typedef  int uint16_t ;
struct TYPE_30__ {scalar_t__ sa_force_spill; TYPE_1__* sa_attr_table; } ;
typedef  TYPE_2__ sa_os_t ;
struct TYPE_31__ {int lot_num; } ;
typedef  TYPE_3__ sa_lot_t ;
struct TYPE_32__ {int* sa_lengths; int /*<<< orphan*/  sa_magic; } ;
typedef  TYPE_4__ sa_hdr_phys_t ;
struct TYPE_33__ {TYPE_8__* sa_os; int /*<<< orphan*/ * sa_spill_tab; TYPE_12__* sa_spill; int /*<<< orphan*/ * sa_bonus_tab; TYPE_12__* sa_bonus; } ;
typedef  TYPE_5__ sa_handle_t ;
struct TYPE_34__ {size_t sa_attr; int sa_length; int sa_size; int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_data_func; void* sa_addr; } ;
typedef  TYPE_6__ sa_bulk_attr_t ;
typedef  scalar_t__ sa_buf_type_t ;
typedef  size_t sa_attr_type_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  scalar_t__ dmu_object_type_t ;
typedef  scalar_t__ boolean_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
struct TYPE_35__ {TYPE_2__* os_sa; } ;
struct TYPE_29__ {scalar_t__ sa_length; } ;
struct TYPE_28__ {int db_size; scalar_t__ db_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 scalar_t__ DMU_OT_SA ; 
 scalar_t__ DMU_OT_ZNODE ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  EFBIG ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (int,int) ; 
 unsigned long long FUNC6 (size_t) ; 
 int SA_BLKPTR_SPACE ; 
 scalar_t__ SA_BONUS ; 
 scalar_t__ FUNC7 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  SA_MAGIC ; 
 int FUNC9 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int,int) ; 
 scalar_t__ SA_SPILL ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int SPA_OLD_MAXBLOCKSIZE ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_12__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_12__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_12__*,int*) ; 
 scalar_t__ FUNC16 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (TYPE_12__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (TYPE_12__*,int /*<<< orphan*/ *,TYPE_12__**) ; 
 size_t* FUNC19 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (size_t*,int) ; 
 scalar_t__ FUNC21 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_8__*,unsigned long long,size_t*,int,int /*<<< orphan*/ *,TYPE_3__**) ; 
 int FUNC23 (TYPE_2__*,TYPE_6__*,int,TYPE_12__*,scalar_t__,int,int*,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (TYPE_5__*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC27(sa_handle_t *hdl, sa_bulk_attr_t *attr_desc, int attr_count,
    dmu_tx_t *tx)
{
	sa_os_t *sa = hdl->sa_os->os_sa;
	uint64_t hash;
	sa_buf_type_t buftype;
	sa_hdr_phys_t *sahdr;
	void *data_start;
	int buf_space;
	sa_attr_type_t *attrs, *attrs_start;
	int i, lot_count;
	int dnodesize;
	int hdrsize;
	int spillhdrsize = 0;
	int used;
	dmu_object_type_t bonustype;
	sa_lot_t *lot;
	int len_idx;
	int spill_used;
	int bonuslen;
	boolean_t spilling;

	FUNC14(hdl->sa_bonus, tx);
	bonustype = FUNC7(hdl->sa_bonus);
	FUNC15(hdl->sa_bonus, &dnodesize);
	bonuslen = FUNC2(dnodesize);
	
	FUNC15(hdl->sa_bonus, &dnodesize);
	bonuslen = FUNC2(dnodesize);

	/* first determine bonus header size and sum of all attributes */
	hdrsize = FUNC23(sa, attr_desc, attr_count, hdl->sa_bonus,
	    SA_BONUS, bonuslen, &i, &used, &spilling);

	if (used > SPA_OLD_MAXBLOCKSIZE)
		return (FUNC11(EFBIG));

	FUNC12(0 == FUNC17(hdl->sa_bonus, spilling ?
	    FUNC4(bonuslen - sizeof (blkptr_t), used + hdrsize) :
	    used + hdrsize, tx));

	FUNC0((bonustype == DMU_OT_ZNODE && spilling == 0) ||
	    bonustype == DMU_OT_SA);

	/* setup and size spill buffer when needed */
	if (spilling) {
		boolean_t dummy;

		if (hdl->sa_spill == NULL) {
			FUNC12(FUNC18(hdl->sa_bonus, NULL,
			    &hdl->sa_spill) == 0);
		}
		FUNC14(hdl->sa_spill, tx);

		spillhdrsize = FUNC23(sa, &attr_desc[i],
		    attr_count - i, hdl->sa_spill, SA_SPILL,
		    hdl->sa_spill->db_size, &i, &spill_used, &dummy);

		if (spill_used > SPA_OLD_MAXBLOCKSIZE)
			return (FUNC11(EFBIG));

		buf_space = hdl->sa_spill->db_size - spillhdrsize;
		if (FUNC1(spill_used, spillhdrsize) >
		    hdl->sa_spill->db_size)
			FUNC12(0 == FUNC26(hdl,
			    FUNC1(spill_used, spillhdrsize), tx));
	}

	/* setup starting pointers to lay down data */
	data_start = (void *)((uintptr_t)hdl->sa_bonus->db_data + hdrsize);
	sahdr = (sa_hdr_phys_t *)hdl->sa_bonus->db_data;
	buftype = SA_BONUS;

	if (spilling)
		buf_space = (sa->sa_force_spill) ?
		    0 : SA_BLKPTR_SPACE - hdrsize;
	else
		buf_space = hdl->sa_bonus->db_size - hdrsize;

	attrs_start = attrs = FUNC19(sizeof (sa_attr_type_t) * attr_count,
	    KM_SLEEP);
	lot_count = 0;

	for (i = 0, len_idx = 0, hash = -1ULL; i != attr_count; i++) {
		uint16_t length;

		FUNC0(FUNC3(data_start, 8));
		FUNC0(FUNC3(buf_space, 8));
		attrs[i] = attr_desc[i].sa_attr;
		length = FUNC9(sa, attrs[i]);
		if (length == 0)
			length = attr_desc[i].sa_length;
		else
			FUNC12(length == attr_desc[i].sa_length);

		if (buf_space < length) {  /* switch to spill buffer */
			FUNC12(spilling);
			FUNC12(bonustype == DMU_OT_SA);
			if (buftype == SA_BONUS && !sa->sa_force_spill) {
				FUNC22(hdl->sa_os, hash, attrs_start,
				    lot_count, tx, &lot);
				FUNC10(sahdr, lot->lot_num, hdrsize);
			}

			buftype = SA_SPILL;
			hash = -1ULL;
			len_idx = 0;

			sahdr = (sa_hdr_phys_t *)hdl->sa_spill->db_data;
			sahdr->sa_magic = SA_MAGIC;
			data_start = (void *)((uintptr_t)sahdr +
			    spillhdrsize);
			attrs_start = &attrs[i];
			buf_space = hdl->sa_spill->db_size - spillhdrsize;
			lot_count = 0;
		}
		hash ^= FUNC6(attrs[i]);
		attr_desc[i].sa_addr = data_start;
		attr_desc[i].sa_size = length;
		FUNC8(attr_desc[i].sa_data_func, attr_desc[i].sa_data,
		    data_start, length);
		if (sa->sa_attr_table[attrs[i]].sa_length == 0) {
			sahdr->sa_lengths[len_idx++] = length;
		}
		FUNC12((uintptr_t)data_start % 8 == 0);
		data_start = (void *)FUNC5(((uintptr_t)data_start +
		    length), 8);
		buf_space -= FUNC5(length, 8);
		lot_count++;
	}

	FUNC22(hdl->sa_os, hash, attrs_start, lot_count, tx, &lot);

	/*
	 * Verify that old znodes always have layout number 0.
	 * Must be DMU_OT_SA for arbitrary layouts
	 */
	FUNC12((bonustype == DMU_OT_ZNODE && lot->lot_num == 0) ||
	    (bonustype == DMU_OT_SA && lot->lot_num > 1));

	if (bonustype == DMU_OT_SA) {
		FUNC10(sahdr, lot->lot_num,
		    buftype == SA_BONUS ? hdrsize : spillhdrsize);
	}

	FUNC20(attrs, sizeof (sa_attr_type_t) * attr_count);
	if (hdl->sa_bonus_tab) {
		FUNC25(hdl->sa_os, hdl->sa_bonus_tab);
		hdl->sa_bonus_tab = NULL;
	}
	if (!sa->sa_force_spill)
		FUNC12(0 == FUNC21(hdl, SA_BONUS));
	if (hdl->sa_spill) {
		FUNC25(hdl->sa_os, hdl->sa_spill_tab);
		if (!spilling) {
			/*
			 * remove spill block that is no longer needed.
			 */
			FUNC13(hdl->sa_spill, NULL);
			hdl->sa_spill = NULL;
			hdl->sa_spill_tab = NULL;
			FUNC12(0 == FUNC16(hdl->sa_os,
			    FUNC24(hdl), tx));
		} else {
			FUNC12(0 == FUNC21(hdl, SA_SPILL));
		}
	}

	return (0);
}