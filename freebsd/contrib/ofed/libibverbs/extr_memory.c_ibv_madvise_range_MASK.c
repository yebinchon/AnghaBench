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
struct ibv_mem_node {uintptr_t start; uintptr_t end; int refcnt; } ;

/* Variables and functions */
 int MADV_DOFORK ; 
 int MADV_DONTFORK ; 
 struct ibv_mem_node* FUNC0 (struct ibv_mem_node*) ; 
 struct ibv_mem_node* FUNC1 (struct ibv_mem_node*) ; 
 unsigned long FUNC2 (void*) ; 
 struct ibv_mem_node* FUNC3 (uintptr_t,uintptr_t,int) ; 
 scalar_t__ huge_page_enabled ; 
 int FUNC4 (void*,uintptr_t,int) ; 
 struct ibv_mem_node* FUNC5 (struct ibv_mem_node*,struct ibv_mem_node*) ; 
 int /*<<< orphan*/  mm_mutex ; 
 unsigned long page_size ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ibv_mem_node*,uintptr_t) ; 
 struct ibv_mem_node* FUNC9 (struct ibv_mem_node*,uintptr_t,int) ; 

__attribute__((used)) static int FUNC10(void *base, size_t size, int advice)
{
	uintptr_t start, end;
	struct ibv_mem_node *node, *tmp;
	int inc;
	int rolling_back = 0;
	int ret = 0;
	unsigned long range_page_size;

	if (!size)
		return 0;

	if (huge_page_enabled)
		range_page_size = FUNC2(base);
	else
		range_page_size = page_size;

	start = (uintptr_t) base & ~(range_page_size - 1);
	end   = ((uintptr_t) (base + size + range_page_size - 1) &
		 ~(range_page_size - 1)) - 1;

	FUNC6(&mm_mutex);
again:
	inc = advice == MADV_DONTFORK ? 1 : -1;

	node = FUNC3(start, end, inc);
	if (!node) {
		ret = -1;
		goto out;
	}

	while (node && node->start <= end) {
		if (node->end > end) {
			if (!FUNC8(node, end + 1)) {
				ret = -1;
				goto out;
			}
		}

		if ((inc == -1 && node->refcnt == 1) ||
		    (inc ==  1 && node->refcnt == 0)) {
			/*
			 * If this is the first time through the loop,
			 * and we merged this node with the previous
			 * one, then we only want to do the madvise()
			 * on start ... node->end (rather than
			 * starting at node->start).
			 *
			 * Otherwise we end up doing madvise() on
			 * bigger region than we're being asked to,
			 * and that may lead to a spurious failure.
			 */
			if (start > node->start)
				ret = FUNC4((void *) start, node->end - start + 1,
					      advice);
			else
				ret = FUNC4((void *) node->start,
					      node->end - node->start + 1,
					      advice);
			if (ret) {
				node = FUNC9(node, start, inc);

				if (rolling_back || !node)
					goto out;

				/* madvise failed, roll back previous changes */
				rolling_back = 1;
				advice = advice == MADV_DONTFORK ?
					MADV_DOFORK : MADV_DONTFORK;
				tmp = FUNC1(node);
				if (!tmp || start > tmp->end)
					goto out;
				end = tmp->end;
				goto again;
			}
		}

		node->refcnt += inc;
		node = FUNC0(node);
	}

	if (node) {
		tmp = FUNC1(node);
		if (tmp && node->refcnt == tmp->refcnt)
			node = FUNC5(node, tmp);
	}

out:
	if (rolling_back)
		ret = -1;

	FUNC7(&mm_mutex);

	return ret;
}