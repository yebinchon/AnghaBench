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
struct logininfo {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  LTYPE_LOGOUT ; 
 int FUNC0 (struct logininfo*) ; 

int
FUNC1(struct logininfo *li)
{
	li->type = LTYPE_LOGOUT;
	return (FUNC0(li));
}