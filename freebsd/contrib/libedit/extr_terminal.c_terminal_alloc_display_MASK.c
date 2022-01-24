#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * el_vdisplay; int /*<<< orphan*/ * el_display; } ;
typedef  TYPE_1__ EditLine ;

/* Variables and functions */
 void* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC2(EditLine *el)
{
	el->el_display = FUNC0(el);
	if (el->el_display == NULL)
		goto done;
	el->el_vdisplay = FUNC0(el);
	if (el->el_vdisplay == NULL)
		goto done;
	return 0;
done:
	FUNC1(el);
	return -1;
}