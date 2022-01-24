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
struct hash_table {struct hash_bucket** buckets; int /*<<< orphan*/  hash_count; } ;
struct hash_bucket {unsigned char const* name; unsigned char* value; int len; struct hash_bucket* next; } ;

/* Variables and functions */
 int FUNC0 (unsigned char const*,int,int /*<<< orphan*/ ) ; 
 struct hash_bucket* FUNC1 () ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned char const*) ; 

void FUNC4(struct hash_table *table, const unsigned char *name, int len,
    unsigned char *pointer)
{
	struct hash_bucket *bp;
	int hashno;

	if (!table)
		return;
	if (!len)
		len = FUNC2((const char *)name);

	hashno = FUNC0(name, len, table->hash_count);
	bp = FUNC1();

	if (!bp) {
		FUNC3("Can't add %s to hash table.", name);
		return;
	}
	bp->name = name;
	bp->value = pointer;
	bp->next = table->buckets[hashno];
	bp->len = len;
	table->buckets[hashno] = bp;
}