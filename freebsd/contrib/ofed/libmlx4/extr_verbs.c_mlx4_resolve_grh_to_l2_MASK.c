#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
union ibv_gid {int* raw; } ;
typedef  int uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  port_pd; int /*<<< orphan*/  dlid; } ;
struct mlx4_ah {int* mac; int vlan; TYPE_2__ av; } ;
struct ibv_pd {int /*<<< orphan*/  context; } ;
struct TYPE_3__ {int /*<<< orphan*/  sgid_index; union ibv_gid dgid; } ;
struct ibv_ah_attr {int sl; TYPE_1__ grh; int /*<<< orphan*/  port_num; } ;

/* Variables and functions */
 int FUNC0 (union ibv_gid*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union ibv_gid*) ; 
 scalar_t__ FUNC4 (union ibv_gid*) ; 
 scalar_t__ FUNC5 (union ibv_gid*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int) ; 

__attribute__((used)) static int FUNC7(struct ibv_pd *pd, struct mlx4_ah *ah,
				  struct ibv_ah_attr *attr)
{
	int err, i;
	uint16_t vid;
	union ibv_gid sgid;

	if (FUNC5(&attr->grh.dgid)) {
		FUNC6(ah->mac, &attr->grh.dgid.raw[8], 3);
		FUNC6(ah->mac + 3, &attr->grh.dgid.raw[13], 3);
		ah->mac[0] ^= 2;

		vid = FUNC0(&attr->grh.dgid);
	} else if (FUNC4(&attr->grh.dgid)) {
		ah->mac[0] = 0x33;
		ah->mac[1] = 0x33;
		for (i = 2; i < 6; ++i)
			ah->mac[i] = attr->grh.dgid.raw[i + 10];

		err = FUNC3(pd->context, attr->port_num,
				    attr->grh.sgid_index, &sgid);
		if (err)
			return err;

		ah->av.dlid = FUNC1(0xc000);
		ah->av.port_pd |= FUNC2(1 << 31);

		vid = FUNC0(&sgid);
	} else
		return 1;

	if (vid != 0xffff) {
		ah->av.port_pd |= FUNC2(1 << 29);
		ah->vlan = vid | ((attr->sl & 7) << 13);
	}

	return 0;
}