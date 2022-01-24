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
struct ip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2 (struct ip* ip, int priority, const char *label)
{
	FUNC1 (priority, "%s %s", label, FUNC0 (ip));
}