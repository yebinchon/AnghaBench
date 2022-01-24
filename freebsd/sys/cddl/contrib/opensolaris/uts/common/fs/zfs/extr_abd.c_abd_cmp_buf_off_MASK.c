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
struct buf_arg {void* member_0; } ;
typedef  int /*<<< orphan*/  abd_t ;

/* Variables and functions */
 int /*<<< orphan*/  abd_cmp_buf_off_cb ; 
 int FUNC0 (int /*<<< orphan*/ *,size_t,size_t,int /*<<< orphan*/ ,struct buf_arg*) ; 

int
FUNC1(abd_t *abd, const void *buf, size_t off, size_t size)
{
	struct buf_arg ba_ptr = { (void *) buf };

	return (FUNC0(abd, off, size, abd_cmp_buf_off_cb, &ba_ptr));
}