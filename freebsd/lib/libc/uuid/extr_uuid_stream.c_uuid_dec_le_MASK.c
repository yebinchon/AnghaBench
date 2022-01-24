#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * node; int /*<<< orphan*/  clock_seq_low; int /*<<< orphan*/  clock_seq_hi_and_reserved; void* time_hi_and_version; void* time_mid; int /*<<< orphan*/  time_low; } ;
typedef  TYPE_1__ uuid_t ;
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int _UUID_NODE_LEN ; 
 void* FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 

void
FUNC2(const void *buf, uuid_t *uuid)
{
	const uint8_t *p = buf;
	int i;

	uuid->time_low = FUNC1(p);
	uuid->time_mid = FUNC0(p + 4);
	uuid->time_hi_and_version = FUNC0(p + 6);
	uuid->clock_seq_hi_and_reserved = p[8];
	uuid->clock_seq_low = p[9];
	for (i = 0; i < _UUID_NODE_LEN; i++)
		uuid->node[i] = p[10 + i];
}