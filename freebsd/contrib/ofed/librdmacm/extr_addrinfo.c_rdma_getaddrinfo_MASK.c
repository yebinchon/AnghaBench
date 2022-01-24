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
struct rdma_addrinfo {int ai_flags; scalar_t__ ai_src_len; int /*<<< orphan*/  ai_src_addr; scalar_t__ ai_dst_len; int /*<<< orphan*/  ai_dst_addr; int /*<<< orphan*/  ai_port_space; int /*<<< orphan*/  ai_qp_type; int /*<<< orphan*/  ai_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int RAI_PASSIVE ; 
 struct rdma_addrinfo* FUNC1 (int,int) ; 
 struct rdma_addrinfo nohints ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_addrinfo*) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (char const*,char const*,struct rdma_addrinfo const*,struct rdma_addrinfo*) ; 
 int /*<<< orphan*/  FUNC5 (struct rdma_addrinfo**,struct rdma_addrinfo const*) ; 
 int FUNC6 () ; 

int FUNC7(const char *node, const char *service,
		     const struct rdma_addrinfo *hints,
		     struct rdma_addrinfo **res)
{
	struct rdma_addrinfo *rai;
	int ret;

	if (!service && !node && !hints)
		return FUNC0(EINVAL);

	ret = FUNC6();
	if (ret)
		return ret;

	rai = FUNC1(1, sizeof(*rai));
	if (!rai)
		return FUNC0(ENOMEM);

	if (!hints)
		hints = &nohints;

	if (node || service) {
		ret = FUNC4(node, service, hints, rai);
	} else {
		rai->ai_flags = hints->ai_flags;
		rai->ai_family = hints->ai_family;
		rai->ai_qp_type = hints->ai_qp_type;
		rai->ai_port_space = hints->ai_port_space;
		if (hints->ai_dst_len) {
			ret = FUNC3(&rai->ai_dst_addr, &rai->ai_dst_len,
					     hints->ai_dst_addr, hints->ai_dst_len);
		}
	}
	if (ret)
		goto err;

	if (!rai->ai_src_len && hints->ai_src_len) {
		ret = FUNC3(&rai->ai_src_addr, &rai->ai_src_len,
				     hints->ai_src_addr, hints->ai_src_len);
		if (ret)
			goto err;
	}

	if (!(rai->ai_flags & RAI_PASSIVE))
		FUNC5(&rai, hints);

	*res = rai;
	return 0;

err:
	FUNC2(rai);
	return ret;
}