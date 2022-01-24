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
typedef  int /*<<< orphan*/  uint64_t ;
struct _buf {scalar_t__ mounted; } ;

/* Variables and functions */
 int FUNC0 (struct _buf*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct _buf*,int /*<<< orphan*/ *) ; 

int
FUNC2(struct _buf *file, uint64_t *size)
{

	if (file->mounted)
		return (FUNC1(file, size));
	else
		return (FUNC0(file, size));
}