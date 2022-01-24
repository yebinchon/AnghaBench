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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct sa_handle {int dummy; } ;
struct query_params {int service_id; int slid; int dlid; int hop_limit; int flow_label; int tclass; int reversible; int numb_path; int pkey; int sl; int qos_class; int /*<<< orphan*/  pkt_life; int /*<<< orphan*/  rate; int /*<<< orphan*/  mtu; int /*<<< orphan*/  dgid; int /*<<< orphan*/  sgid; } ;
struct query_cmd {int dummy; } ;
typedef  int /*<<< orphan*/  pr ;
struct TYPE_4__ {int service_id; int slid; int dlid; int hop_flow_raw; int tclass; int num_path; int pkey; int qos_class_sl; int /*<<< orphan*/  pkt_life; int /*<<< orphan*/  rate; int /*<<< orphan*/  mtu; int /*<<< orphan*/  dgid; int /*<<< orphan*/  sgid; } ;
typedef  TYPE_1__ ib_path_rec_t ;
typedef  int /*<<< orphan*/  ib_net64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DGID ; 
 int /*<<< orphan*/  DLID ; 
 int /*<<< orphan*/  FLOWLABEL ; 
 int /*<<< orphan*/  HOPLIMIT ; 
 int /*<<< orphan*/  IB_PATH_REC_SL_MASK ; 
 int /*<<< orphan*/  IB_SA_ATTR_PATHRECORD ; 
 int /*<<< orphan*/  MTU ; 
 int /*<<< orphan*/  NUMBPATH ; 
 int /*<<< orphan*/  PKEY ; 
 int /*<<< orphan*/  PKTLIFETIME ; 
 int /*<<< orphan*/  PR ; 
 int /*<<< orphan*/  QOS_CLASS ; 
 int /*<<< orphan*/  RATE ; 
 int /*<<< orphan*/  REVERSIBLE ; 
 int /*<<< orphan*/  SELEC ; 
 int /*<<< orphan*/  SERVICEID ; 
 int /*<<< orphan*/  SGID ; 
 int /*<<< orphan*/  SL ; 
 int /*<<< orphan*/  SLID ; 
 int /*<<< orphan*/  TCLASS ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  dump_path_record ; 
 int FUNC5 (struct sa_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ,struct query_params*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(const struct query_cmd *q, struct sa_handle * h,
			      struct query_params *p, int argc, char *argv[])
{
	ib_path_rec_t pr;
	ib_net64_t comp_mask = 0;
	uint32_t flow = 0;
	uint16_t qos_class = 0;
	uint8_t reversible = 0;

	FUNC6(&pr, 0, sizeof(pr));
	FUNC1(p->service_id, 64, 0, pr.service_id, PR, SERVICEID);
	FUNC0(p->sgid, pr.sgid, PR, SGID);
	FUNC0(p->dgid, pr.dgid, PR, DGID);
	FUNC1(p->slid, 16, 0, pr.slid, PR, SLID);
	FUNC1(p->dlid, 16, 0, pr.dlid, PR, DLID);
	FUNC1(p->hop_limit, 32, -1, pr.hop_flow_raw, PR, HOPLIMIT);
	FUNC1((p->flow_label << 8), 32, 0, flow, PR, FLOWLABEL);
	pr.hop_flow_raw =
		(pr.hop_flow_raw & FUNC4(~0x0FFFFF00)) | flow;
	FUNC1(p->tclass, 8, 0, pr.tclass, PR, TCLASS);
	FUNC1(p->reversible, 8, -1, reversible, PR, REVERSIBLE);
	FUNC1(p->numb_path, 8, -1, pr.num_path, PR, NUMBPATH);
	pr.num_path |= reversible << 7;
	FUNC1(p->pkey, 16, 0, pr.pkey, PR, PKEY);
	FUNC1(p->sl, 16, -1, pr.qos_class_sl, PR, SL);
	FUNC1((p->qos_class << 4), 16, -1, qos_class, PR, QOS_CLASS);
	pr.qos_class_sl = (pr.qos_class_sl & FUNC3(IB_PATH_REC_SL_MASK)) |
			  qos_class;
	FUNC2(p->mtu, pr.mtu, PR, MTU, SELEC);
	FUNC2(p->rate, pr.rate, PR, RATE, SELEC);
	FUNC2(p->pkt_life, pr.pkt_life, PR, PKTLIFETIME,
				  SELEC);

	return FUNC5(h, IB_SA_ATTR_PATHRECORD, 0, comp_mask,
					&pr, sizeof(pr), dump_path_record, p);
}