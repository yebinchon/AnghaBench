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
struct iter_donotq {int /*<<< orphan*/  region; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 

size_t 
FUNC1(struct iter_donotq* donotq)
{
	if(!donotq) return 0;
	return sizeof(*donotq) + FUNC0(donotq->region);
}