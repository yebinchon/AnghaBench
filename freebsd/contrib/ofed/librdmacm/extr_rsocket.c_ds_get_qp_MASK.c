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
struct rsocket {struct ds_qp* qp_list; } ;
struct ds_qp {int /*<<< orphan*/  cm_id; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,union socket_addr*) ; 
 int FUNC1 (struct rsocket*,union socket_addr*,int /*<<< orphan*/ ,struct ds_qp**) ; 
 struct ds_qp* FUNC2 (struct ds_qp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct rsocket *rs, union socket_addr *src_addr,
		     socklen_t addrlen, struct ds_qp **qp)
{
	if (rs->qp_list) {
		*qp = rs->qp_list;
		do {
			if (!FUNC0(FUNC3((*qp)->cm_id),
					     src_addr))
				return 0;

			*qp = FUNC2(*qp);
		} while (*qp != rs->qp_list);
	}

	return FUNC1(rs, src_addr, addrlen, qp);
}