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
struct idr_layer {struct idr_layer** ary; } ;
struct idr {int layers; struct idr_layer* top; } ;

/* Variables and functions */
 int MAX_ID_MASK ; 
 int FUNC0 (struct idr*) ; 
 size_t FUNC1 (int,int) ; 

__attribute__((used)) static inline struct idr_layer *
FUNC2(struct idr *idr, int id)
{
	struct idr_layer *il;
	int layer;

	id &= MAX_ID_MASK;
	il = idr->top;
	layer = idr->layers - 1;
	if (il == NULL || id > FUNC0(idr))
		return (NULL);
	while (layer && il) {
		il = il->ary[FUNC1(id, layer)];
		layer--;
	}
	return (il);
}