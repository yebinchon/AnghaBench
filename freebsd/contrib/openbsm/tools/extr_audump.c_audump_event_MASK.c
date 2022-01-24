#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int ae_number; char* ae_name; char* ae_desc; int /*<<< orphan*/  ae_class; } ;
typedef  TYPE_1__ au_event_ent_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void)
{
	au_event_ent_t *ep;

	while ((ep = FUNC0()) != NULL) {
		FUNC1("%d:%s:%s:", ep->ae_number, ep->ae_name, ep->ae_desc);
		FUNC2(ep->ae_class);
		FUNC1("\n");
	}
}