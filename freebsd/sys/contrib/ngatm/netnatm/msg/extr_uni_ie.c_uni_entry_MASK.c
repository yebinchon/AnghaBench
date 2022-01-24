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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct unicx*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char,struct unicx*) ; 

__attribute__((used)) static void
FUNC2(const char *s, struct unicx *cx)
{
	FUNC0(cx, s);
	FUNC1('=', cx);
}