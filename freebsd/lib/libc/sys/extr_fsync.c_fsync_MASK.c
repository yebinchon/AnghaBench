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
 size_t INTERPOS_fsync ; 
 scalar_t__* __libc_interposing ; 
 int FUNC0 (int) ; 

int
FUNC1(int fd)
{

	return (((int (*)(int))__libc_interposing[INTERPOS_fsync])(fd));
}