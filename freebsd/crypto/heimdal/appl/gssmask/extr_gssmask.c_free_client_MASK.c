#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct client {scalar_t__ logging; scalar_t__ sock; struct client* moniker; TYPE_1__* handles; } ;
struct TYPE_2__ {int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct client*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct client *c)
{
    while(c->handles)
	FUNC0(&c->handles, c->handles->idx);

    FUNC1(c->moniker);
    FUNC2(c->sock);
    if (c->logging)
	FUNC2(c->logging);
    FUNC1(c);
}