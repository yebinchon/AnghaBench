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
struct rdma_addrinfo {int dummy; } ;
struct addrinfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 int FUNC1 (char const*,char const*,struct addrinfo*,struct addrinfo**) ; 
 struct rdma_addrinfo const nohints ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*,struct rdma_addrinfo const*) ; 
 int FUNC3 (struct rdma_addrinfo*,struct rdma_addrinfo const*,struct addrinfo*) ; 

__attribute__((used)) static int FUNC4(const char *node, const char *service,
			    const struct rdma_addrinfo *hints,
			    struct rdma_addrinfo *rai)
{
	struct addrinfo ai_hints;
	struct addrinfo *ai;
	int ret;

	if (hints != &nohints) {
		FUNC2(&ai_hints, hints);
		ret = FUNC1(node, service, &ai_hints, &ai);
	} else {
		ret = FUNC1(node, service, NULL, &ai);
	}
	if (ret)
		return ret;

	ret = FUNC3(rai, hints, ai);
	FUNC0(ai);
	return ret;
}