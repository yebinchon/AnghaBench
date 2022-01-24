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
struct index_map {int /*<<< orphan*/ * array; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  IDX_ENTRY_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  errno ; 
 size_t FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct index_map *idm, int index)
{
	idm->array[FUNC1(index)] = FUNC0(IDX_ENTRY_SIZE, sizeof(void *));
	if (!idm->array[FUNC1(index)])
		goto nomem;

	return index;

nomem:
	errno = ENOMEM;
	return -1;
}