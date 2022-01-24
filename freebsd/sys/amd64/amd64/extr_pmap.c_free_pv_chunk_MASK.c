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
struct pv_chunks_list {int /*<<< orphan*/  pvc_lock; int /*<<< orphan*/  pvc_list; } ;
struct pv_chunk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct pv_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pv_chunk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pc_lru ; 
 size_t FUNC4 (struct pv_chunk*) ; 
 struct pv_chunks_list* pv_chunks ; 

__attribute__((used)) static void
FUNC5(struct pv_chunk *pc)
{
	struct pv_chunks_list *pvc;

	pvc = &pv_chunks[FUNC4(pc)];
	FUNC2(&pvc->pvc_lock);
	FUNC0(&pvc->pvc_list, pc, pc_lru);
	FUNC3(&pvc->pvc_lock);
	FUNC1(pc);
}