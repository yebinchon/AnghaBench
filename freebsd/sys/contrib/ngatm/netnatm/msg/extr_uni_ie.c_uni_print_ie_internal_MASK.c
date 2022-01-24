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
struct TYPE_2__ {int /*<<< orphan*/  coding; } ;
union uni_ieall {TYPE_1__ h; } ;
struct unicx {int dummy; } ;
struct iedecl {int /*<<< orphan*/  (* print ) (union uni_ieall const*,struct unicx*) ;} ;
typedef  enum uni_ietype { ____Placeholder_uni_ietype } uni_ietype ;

/* Variables and functions */
 struct iedecl* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union uni_ieall const*,struct unicx*) ; 

void
FUNC2(enum uni_ietype code, const union uni_ieall *ie,
    struct unicx *cx)
{
	const struct iedecl *iedecl;

	if((iedecl = FUNC0(code, ie->h.coding)) != NULL)
		(*iedecl->print)(ie, cx);
}