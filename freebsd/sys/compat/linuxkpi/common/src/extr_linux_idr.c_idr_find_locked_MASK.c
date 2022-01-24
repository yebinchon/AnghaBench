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
struct idr_layer {void** ary; } ;
struct idr {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int IDR_MASK ; 
 int /*<<< orphan*/  MA_OWNED ; 
 struct idr_layer* FUNC0 (struct idr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void *
FUNC2(struct idr *idr, int id)
{
	struct idr_layer *il;
	void *res;

	FUNC1(&idr->lock, MA_OWNED);
	il = FUNC0(idr, id);
	if (il != NULL)
		res = il->ary[id & IDR_MASK];
	else
		res = NULL;
	return (res);
}