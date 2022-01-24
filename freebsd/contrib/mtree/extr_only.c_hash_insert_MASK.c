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
typedef  size_t uint32_t ;
struct hentry {char* str; size_t hash; struct hentry* next; } ;

/* Variables and functions */
 struct hentry* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 struct hentry** table ; 

__attribute__((used)) static void
FUNC3(char *str, uint32_t h)
{
	struct hentry *e;
	char *x;

	if ((e = FUNC0(sizeof(*e))) == NULL)
		FUNC1("memory allocation error");
	if ((x = FUNC2(str)) == NULL)
		FUNC1("memory allocation error");

	e->str = x;
	e->hash = h;
	e->next = table[h];
	table[h] = e;
}