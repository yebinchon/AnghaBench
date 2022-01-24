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
struct slabhash {struct lruhash** array; } ;
struct lruhash {int dummy; } ;
typedef  int /*<<< orphan*/  hashvalue_type ;

/* Variables and functions */
 size_t FUNC0 (struct slabhash*,int /*<<< orphan*/ ) ; 

struct lruhash* FUNC1(struct slabhash* sl, hashvalue_type hash)
{
	return sl->array[FUNC0(sl, hash)];
}