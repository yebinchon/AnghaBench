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
struct memory_type_list {int /*<<< orphan*/  mtl_error; int /*<<< orphan*/  mtl_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MEMSTAT_ERROR_UNDEFINED ; 
 struct memory_type_list* FUNC1 (int) ; 

struct memory_type_list *
FUNC2(void)
{
	struct memory_type_list *mtlp;

	mtlp = FUNC1(sizeof(*mtlp));
	if (mtlp == NULL)
		return (NULL);

	FUNC0(&mtlp->mtl_list);
	mtlp->mtl_error = MEMSTAT_ERROR_UNDEFINED;
	return (mtlp);
}