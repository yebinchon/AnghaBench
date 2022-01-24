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
struct TYPE_2__ {struct isoent* first; } ;
struct isoent {struct isoent* next; TYPE_1__ extr_rec_list; struct isoent* identifier; struct isoent* children_sorted; } ;
struct extr_rec {struct extr_rec* next; TYPE_1__ extr_rec_list; struct extr_rec* identifier; struct extr_rec* children_sorted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct isoent*) ; 

__attribute__((used)) static void
FUNC1(struct isoent *isoent)
{
	struct extr_rec *er, *er_next;

	FUNC0(isoent->children_sorted);
	FUNC0(isoent->identifier);
	er = isoent->extr_rec_list.first;
	while (er != NULL) {
		er_next = er->next;
		FUNC0(er);
		er = er_next;
	}
	FUNC0(isoent);
}