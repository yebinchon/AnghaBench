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
struct roff_node {int type; } ;

/* Variables and functions */
#define  ROFFT_BLOCK 130 
#define  ROFFT_BODY 129 
#define  ROFFT_ELEM 128 
 int /*<<< orphan*/  FUNC0 (struct roff_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct roff_node*) ; 

__attribute__((used)) static int
FUNC2(struct roff_node *n)
{
	switch (n->type) {
	case ROFFT_BLOCK:
		FUNC1(n);
		return 1;
	case ROFFT_BODY:
	case ROFFT_ELEM:
		FUNC0(n);
		return 1;
	default:
		return 0;
	}
}