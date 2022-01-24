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
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 size_t INTERPOS_read ; 
 scalar_t__* __libc_interposing ; 
 int /*<<< orphan*/  FUNC0 (int,void*,size_t) ; 

ssize_t
FUNC1(int fd, void *buf, size_t nbytes)
{

	return (((ssize_t (*)(int, void *, size_t))
	    __libc_interposing[INTERPOS_read])(fd, buf, nbytes));
}