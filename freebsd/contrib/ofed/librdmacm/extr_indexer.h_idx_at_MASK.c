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
struct indexer {TYPE_1__** array; } ;
struct TYPE_2__ {void* item; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static inline void *FUNC2(struct indexer *idx, int index)
{
	return (idx->array[FUNC0(index)] + FUNC1(index))->item;
}