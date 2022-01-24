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
struct evbuffer_chain {int flags; scalar_t__ misalign; int /*<<< orphan*/  off; scalar_t__ buffer; } ;

/* Variables and functions */
 int EVBUFFER_IMMUTABLE ; 
 int EVBUFFER_MEM_PINNED_ANY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct evbuffer_chain *chain)
{
	FUNC0(!(chain->flags & EVBUFFER_IMMUTABLE));
	FUNC0(!(chain->flags & EVBUFFER_MEM_PINNED_ANY));
	FUNC1(chain->buffer, chain->buffer + chain->misalign, chain->off);
	chain->misalign = 0;
}