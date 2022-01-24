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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct t4_sq {int dummy; } ;
struct ibv_send_wr {int num_sge; TYPE_1__* sg_list; } ;
struct fw_ri_immd {int /*<<< orphan*/  immdlen; scalar_t__ r2; scalar_t__ r1; int /*<<< orphan*/  op; scalar_t__ data; } ;
struct TYPE_2__ {int length; scalar_t__ addr; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  FW_RI_DATA_IMMD ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct t4_sq *sq, struct fw_ri_immd *immdp,
		      struct ibv_send_wr *wr, int max, u32 *plenp)
{
	u8 *dstp, *srcp;
	u32 plen = 0;
	int i;
	int len;

	dstp = (u8 *)immdp->data;
	for (i = 0; i < wr->num_sge; i++) {
		if ((plen + wr->sg_list[i].length) > max)
			return -EMSGSIZE;
		srcp = (u8 *)(unsigned long)wr->sg_list[i].addr;
		plen += wr->sg_list[i].length;
		len = wr->sg_list[i].length;
		FUNC2(dstp, srcp, len);
		dstp += len;
		srcp += len;
	}
	len = FUNC0(plen + 8, 16) - (plen + 8);
	if (len)
		FUNC3(dstp, 0, len);
	immdp->op = FW_RI_DATA_IMMD;
	immdp->r1 = 0;
	immdp->r2 = 0;
	immdp->immdlen = FUNC1(plen);
	*plenp = plen;
	return 0;
}