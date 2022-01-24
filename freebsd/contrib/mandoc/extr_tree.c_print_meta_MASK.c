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
struct roff_meta {char* title; char* name; char* msec; char* vol; char* arch; char* os; char* date; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

__attribute__((used)) static void
FUNC1(const struct roff_meta *meta)
{
	if (meta->title != NULL)
		FUNC0("title = \"%s\"\n", meta->title);
	if (meta->name != NULL)
		FUNC0("name  = \"%s\"\n", meta->name);
	if (meta->msec != NULL)
		FUNC0("sec   = \"%s\"\n", meta->msec);
	if (meta->vol != NULL)
		FUNC0("vol   = \"%s\"\n", meta->vol);
	if (meta->arch != NULL)
		FUNC0("arch  = \"%s\"\n", meta->arch);
	if (meta->os != NULL)
		FUNC0("os    = \"%s\"\n", meta->os);
	if (meta->date != NULL)
		FUNC0("date  = \"%s\"\n", meta->date);
}