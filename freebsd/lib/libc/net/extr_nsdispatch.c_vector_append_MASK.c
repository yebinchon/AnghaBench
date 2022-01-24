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

/* Variables and functions */
 unsigned int ELEMSPERCHUNK ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (void*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 (void*,unsigned int,size_t) ; 

__attribute__((used)) static void *
FUNC3(const void *elem, void *vec, unsigned int *count, size_t esize)
{
	void	*p;

	if ((*count % ELEMSPERCHUNK) == 0) {
		p = FUNC2(vec, *count + ELEMSPERCHUNK, esize);
		if (p == NULL) {
			FUNC1(LOG_ERR, "memory allocation failure");
			return (vec);
		}
		vec = p;
	}
	FUNC0((void *)(((uintptr_t)vec) + (*count * esize)), elem, esize);
	(*count)++;
	return (vec);
}