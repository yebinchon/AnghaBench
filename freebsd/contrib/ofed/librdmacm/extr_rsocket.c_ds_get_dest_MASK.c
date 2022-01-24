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
typedef  union socket_addr {int dummy; } socket_addr ;
struct sockaddr {int dummy; } ;
struct rsocket {int /*<<< orphan*/  map_lock; int /*<<< orphan*/  dest_map; } ;
struct ds_qp {int dummy; } ;
struct ds_dest {int /*<<< orphan*/  addr; struct ds_qp* qp; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct ds_dest* FUNC1 (int,int) ; 
 int /*<<< orphan*/  ds_compare_addr ; 
 int FUNC2 (struct rsocket*,union socket_addr*,int /*<<< orphan*/ ,struct ds_qp**) ; 
 int FUNC3 (struct rsocket*,struct sockaddr const*,int /*<<< orphan*/ ,union socket_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 struct ds_dest** FUNC7 (struct sockaddr const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ds_dest** FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct rsocket *rs, const struct sockaddr *addr,
		       socklen_t addrlen, struct ds_dest **dest)
{
	union socket_addr src_addr;
	socklen_t src_len;
	struct ds_qp *qp;
	struct ds_dest **tdest, *new_dest;
	int ret = 0;

	FUNC4(&rs->map_lock);
	tdest = FUNC7(addr, &rs->dest_map, ds_compare_addr);
	if (tdest)
		goto found;

	ret = FUNC3(rs, addr, addrlen, &src_addr, &src_len);
	if (ret)
		goto out;

	ret = FUNC2(rs, &src_addr, src_len, &qp);
	if (ret)
		goto out;

	tdest = FUNC7(addr, &rs->dest_map, ds_compare_addr);
	if (!tdest) {
		new_dest = FUNC1(1, sizeof(*new_dest));
		if (!new_dest) {
			ret = FUNC0(ENOMEM);
			goto out;
		}

		FUNC6(&new_dest->addr, addr, addrlen);
		new_dest->qp = qp;
		tdest = FUNC8(&new_dest->addr, &rs->dest_map, ds_compare_addr);
	}

found:
	*dest = *tdest;
out:
	FUNC5(&rs->map_lock);
	return ret;
}