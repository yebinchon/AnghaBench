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
union idx_entry {void* item; } ;
struct indexer {union idx_entry** array; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 size_t FUNC1 (int) ; 

void FUNC2(struct indexer *idx, int index, void *item)
{
	union idx_entry *entry;

	entry = idx->array[FUNC0(index)];
	entry[FUNC1(index)].item = item;
}