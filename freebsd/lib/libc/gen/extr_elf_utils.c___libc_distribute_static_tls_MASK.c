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
 uintptr_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 

void
FUNC3(size_t offset, void *src, size_t len,
    size_t total_len)
{
	uintptr_t tlsbase;

	tlsbase = FUNC0(offset);
	FUNC1((void *)tlsbase, src, len);
	FUNC2((char *)tlsbase + len, 0, total_len - len);
}