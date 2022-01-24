#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct sa_query_result {int result_cnt; void* status; void* p_result_madw; } ;
struct TYPE_11__ {int /*<<< orphan*/  gid; scalar_t__ grh_present; } ;
struct sa_handle {int /*<<< orphan*/  fd; int /*<<< orphan*/  agent; TYPE_7__ dport; } ;
typedef  int /*<<< orphan*/  rpc ;
struct TYPE_8__ {int /*<<< orphan*/  mod; int /*<<< orphan*/  id; } ;
struct TYPE_9__ {size_t datasz; int dataoffs; int /*<<< orphan*/  mask; TYPE_1__ attr; scalar_t__ method; int /*<<< orphan*/  mgtclass; } ;
typedef  TYPE_2__ ib_rpc_t ;
struct TYPE_10__ {int grh_present; int /*<<< orphan*/  gid; scalar_t__ traffic_class; scalar_t__ hop_limit; scalar_t__ gid_index; } ;
typedef  TYPE_3__ ib_mad_addr_t ;

/* Variables and functions */
 scalar_t__ ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IB_MAD_METHOD_F ; 
 scalar_t__ IB_MAD_METHOD_GET_TABLE ; 
 int /*<<< orphan*/  IB_MAD_STATUS_F ; 
 int /*<<< orphan*/  IB_SA_ATTROFFS_F ; 
 int /*<<< orphan*/  IB_SA_CLASS ; 
 int IB_SA_DATA_OFFS ; 
 void* IB_SA_MAD_STATUS_SUCCESS ; 
 int /*<<< orphan*/  IB_SA_MKEY_F ; 
 void* FUNC2 (int,scalar_t__) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  ibd_timeout ; 
 int ibdebug ; 
 int /*<<< orphan*/  FUNC4 (void*,TYPE_2__*,TYPE_7__*,int /*<<< orphan*/ *,void*) ; 
 void* FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC9 (void*,scalar_t__) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 void* FUNC11 (void*) ; 
 TYPE_3__* FUNC12 (void*) ; 
 int FUNC13 (int /*<<< orphan*/ ,void*,int*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 () ; 
 int FUNC16 (void*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,void*,int) ; 

int FUNC18(struct sa_handle * h, uint8_t method,
		    uint16_t attr, uint32_t mod, uint64_t comp_mask,
		    uint64_t sm_key, void *data, size_t datasz,
		    struct sa_query_result *result)
{
	ib_rpc_t rpc;
	void *umad, *mad;
	int ret, offset, len = 256;

	FUNC8(&rpc, 0, sizeof(rpc));
	rpc.mgtclass = IB_SA_CLASS;
	rpc.method = method;
	rpc.attr.id = attr;
	rpc.attr.mod = mod;
	rpc.mask = comp_mask;
	rpc.datasz = datasz;
	rpc.dataoffs = IB_SA_DATA_OFFS;

	umad = FUNC2(1, len + FUNC15());
	if (!umad)
		FUNC0("cannot alloc mem for umad: %s\n", FUNC10(errno));

	FUNC4(umad, &rpc, &h->dport, NULL, data);

	FUNC6(FUNC11(umad), 0, IB_SA_MKEY_F, sm_key);

	if (ibdebug > 1)
		FUNC17(stdout, "SA Request:\n", FUNC11(umad), len);

	if (h->dport.grh_present) {
		ib_mad_addr_t *p_mad_addr = FUNC12(umad);
		p_mad_addr->grh_present = 1;
		p_mad_addr->gid_index = 0;
		p_mad_addr->hop_limit = 0;
		p_mad_addr->traffic_class = 0;
		FUNC7(p_mad_addr->gid, h->dport.gid, 16);
	}

	ret = FUNC14(h->fd, h->agent, umad, len, ibd_timeout, 0);
	if (ret < 0) {
		FUNC1("umad_send failed: attr 0x%x: %s\n",
			attr, FUNC10(errno));
		FUNC3(umad);
		return (-ret);
	}

recv_mad:
	ret = FUNC13(h->fd, umad, &len, ibd_timeout);
	if (ret < 0) {
		if (errno == ENOSPC) {
			umad = FUNC9(umad, FUNC15() + len);
			goto recv_mad;
		}
		FUNC1("umad_recv failed: attr 0x%x: %s\n", attr,
			FUNC10(errno));
		FUNC3(umad);
		return (-ret);
	}

	if ((ret = FUNC16(umad)))
		return ret;

	mad = FUNC11(umad);

	if (ibdebug > 1)
		FUNC17(stdout, "SA Response:\n", mad, len);

	method = (uint8_t) FUNC5(mad, 0, IB_MAD_METHOD_F);
	offset = FUNC5(mad, 0, IB_SA_ATTROFFS_F);
	result->status = FUNC5(mad, 0, IB_MAD_STATUS_F);
	result->p_result_madw = mad;
	if (result->status != IB_SA_MAD_STATUS_SUCCESS)
		result->result_cnt = 0;
	else if (method != IB_MAD_METHOD_GET_TABLE)
		result->result_cnt = 1;
	else if (!offset)
		result->result_cnt = 0;
	else
		result->result_cnt = (len - IB_SA_DATA_OFFS) / (offset << 3);

	return 0;
}