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
struct buf_arg {char* arg_buf; } ;

/* Variables and functions */
 int FUNC0 (void*,char*,size_t) ; 

__attribute__((used)) static int
FUNC1(void *buf, size_t size, void *private)
{
	int ret;
	struct buf_arg *ba_ptr = private;

	ret = FUNC0(buf, ba_ptr->arg_buf, size);
	ba_ptr->arg_buf = (char *)ba_ptr->arg_buf + size;

	return (ret);
}