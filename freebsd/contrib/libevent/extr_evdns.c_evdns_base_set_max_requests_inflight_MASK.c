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
struct request {int trans_id; } ;
struct evdns_base {int n_req_heads; int global_max_requests_inflight; struct request** req_heads; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdns_base*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct request*,struct request**) ; 
 int /*<<< orphan*/  FUNC3 (struct request*,struct request**) ; 
 struct request** FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct request**) ; 

__attribute__((used)) static int
FUNC6(struct evdns_base *base, int maxinflight)
{
	int old_n_heads = base->n_req_heads, n_heads;
	struct request **old_heads = base->req_heads, **new_heads, *req;
	int i;

	FUNC0(base);
	if (maxinflight < 1)
		maxinflight = 1;
	n_heads = (maxinflight+4) / 5;
	FUNC1(n_heads > 0);
	new_heads = FUNC4(n_heads, sizeof(struct request*));
	if (!new_heads)
		return (-1);
	if (old_heads) {
		for (i = 0; i < old_n_heads; ++i) {
			while (old_heads[i]) {
				req = old_heads[i];
				FUNC3(req, &old_heads[i]);
				FUNC2(req, &new_heads[req->trans_id % n_heads]);
			}
		}
		FUNC5(old_heads);
	}
	base->req_heads = new_heads;
	base->n_req_heads = n_heads;
	base->global_max_requests_inflight = maxinflight;
	return (0);
}