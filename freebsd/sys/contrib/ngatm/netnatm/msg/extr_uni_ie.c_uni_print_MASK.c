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
struct unicx {int dummy; } ;
struct uni_all {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,struct unicx*) ; 
 int /*<<< orphan*/  FUNC1 (struct uni_all const*,struct unicx*) ; 

void
FUNC2(char *buf, size_t size, const struct uni_all *all, struct unicx *cx)
{
	FUNC0(buf, size, cx);
	FUNC1(all, cx);
}