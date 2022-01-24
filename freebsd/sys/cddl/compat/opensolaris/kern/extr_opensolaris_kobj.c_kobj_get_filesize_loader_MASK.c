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
typedef  scalar_t__ uint64_t ;
struct _buf {int /*<<< orphan*/  ptr; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  MODINFO_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct _buf *file, uint64_t *size)
{
	void *ptr;

	ptr = FUNC0(file->ptr, MODINFO_SIZE);
	if (ptr == NULL)
		return (ENOENT);
	*size = (uint64_t)*(size_t *)ptr;
	return (0);
}