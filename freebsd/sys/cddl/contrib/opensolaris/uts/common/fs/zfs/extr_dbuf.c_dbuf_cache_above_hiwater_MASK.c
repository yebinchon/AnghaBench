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
typedef  int boolean_t ;
struct TYPE_2__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 size_t DB_DBUF_CACHE ; 
 scalar_t__ FUNC0 () ; 
 TYPE_1__* dbuf_caches ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline boolean_t
FUNC2(void)
{
	return (FUNC1(&dbuf_caches[DB_DBUF_CACHE].size) >
	    FUNC0());
}