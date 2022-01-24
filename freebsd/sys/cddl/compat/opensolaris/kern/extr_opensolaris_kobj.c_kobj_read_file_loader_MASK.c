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
struct _buf {int /*<<< orphan*/  ptr; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned int) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(struct _buf *file, char *buf, unsigned size, unsigned off)
{
	char *ptr;

	ptr = FUNC1(file->ptr);
	if (ptr == NULL)
		return (ENOENT);
	FUNC0(ptr + off, buf, size);
	return (0);
}