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
struct ohash_info {char* (* alloc ) (int,int /*<<< orphan*/ ) ;int key_offset; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 

void *
FUNC3(struct ohash_info *i, const char *start, const char **end)
{
	char *p;

	if (!*end)
		*end = start + FUNC1(start);
	p = (i->alloc)(i->key_offset + (*end - start) + 1, i->data);
	if (p) {
		FUNC0(p+i->key_offset, start, *end-start);
		p[i->key_offset + (*end - start)] = '\0';
	}
	return (void *)p;
}