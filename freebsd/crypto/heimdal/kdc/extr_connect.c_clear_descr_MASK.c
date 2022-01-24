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
struct descr {scalar_t__ s; scalar_t__ len; int /*<<< orphan*/  size; scalar_t__ buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ rk_INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void
FUNC2(struct descr *d)
{
    if(d->buf)
	FUNC0(d->buf, 0, d->size);
    d->len = 0;
    if(d->s != rk_INVALID_SOCKET)
	FUNC1(d->s);
    d->s = rk_INVALID_SOCKET;
}