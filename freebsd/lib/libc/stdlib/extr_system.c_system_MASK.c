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
 size_t INTERPOS_system ; 
 scalar_t__* __libc_interposing ; 
 int FUNC0 (char const*) ; 

int
FUNC1(const char *command)
{

	return (((int (*)(const char *))
	    __libc_interposing[INTERPOS_system])(command));
}