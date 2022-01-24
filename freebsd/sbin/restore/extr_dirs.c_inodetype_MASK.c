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
struct inotab {int dummy; } ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
 int LEAF ; 
 int NODE ; 
 struct inotab* FUNC0 (int /*<<< orphan*/ ) ; 

int
FUNC1(ino_t ino)
{
	struct inotab *itp;

	itp = FUNC0(ino);
	if (itp == NULL)
		return (LEAF);
	return (NODE);
}