#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__* key; scalar_t__* alt; } ;
struct TYPE_8__ {int /*<<< orphan*/  el_outfile; TYPE_1__ el_map; } ;
typedef  TYPE_2__ EditLine ;

/* Variables and functions */
 int N_KEYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 

__attribute__((used)) static void
FUNC4(EditLine *el)
{
	int prev, i;

	(void) FUNC0(el->el_outfile, "Standard key bindings\n");
	prev = 0;
	for (i = 0; i < N_KEYS; i++) {
		if (el->el_map.key[prev] == el->el_map.key[i])
			continue;
		FUNC2(el, el->el_map.key, prev, i - 1);
		prev = i;
	}
	FUNC2(el, el->el_map.key, prev, i - 1);

	(void) FUNC0(el->el_outfile, "Alternative key bindings\n");
	prev = 0;
	for (i = 0; i < N_KEYS; i++) {
		if (el->el_map.alt[prev] == el->el_map.alt[i])
			continue;
		FUNC2(el, el->el_map.alt, prev, i - 1);
		prev = i;
	}
	FUNC2(el, el->el_map.alt, prev, i - 1);

	(void) FUNC0(el->el_outfile, "Multi-character bindings\n");
	FUNC1(el, L"");
	(void) FUNC0(el->el_outfile, "Arrow key bindings\n");
	FUNC3(el, L"");
}