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
struct path_ctx {scalar_t__ fd; struct path_ctx* path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct path_ctx*) ; 

int
FUNC2(void *ctx)
{
    struct path_ctx *s = ctx;
    if (s->fd >= 0)
	FUNC0(s->fd);
    FUNC1(s->path);
    FUNC1(s);
    return 0;
}