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
struct escape_filter_ctx {int escape_char; scalar_t__ escape_pending; } ;

/* Variables and functions */
 struct escape_filter_ctx* FUNC0 (int,int) ; 

void *
FUNC1(int escape_char)
{
	struct escape_filter_ctx *ret;

	ret = FUNC0(1, sizeof(*ret));
	ret->escape_pending = 0;
	ret->escape_char = escape_char;
	return (void *)ret;
}