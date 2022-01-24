#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tcflag_t ;
struct TYPE_5__ {int /*<<< orphan*/  t_ex; int /*<<< orphan*/  t_ed; int /*<<< orphan*/  t_ts; } ;
struct TYPE_6__ {TYPE_1__ el_tty; } ;
typedef  TYPE_2__ EditLine ;

/* Variables and functions */
 int /*<<< orphan*/  ED_IO ; 
 int /*<<< orphan*/  EX_IO ; 
 int MD_CTL ; 
 scalar_t__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(EditLine *el, int kind)
{
	tcflag_t *tt, *ed, *ex;
	tt = FUNC0(&el->el_tty.t_ts, kind);
	ed = FUNC0(&el->el_tty.t_ed, kind);
	ex = FUNC0(&el->el_tty.t_ex, kind);

	if (*tt != *ex && (kind != MD_CTL || *tt != *ed)) {
		*ed = FUNC1(el, *tt, ED_IO, kind);
		*ex = FUNC1(el, *tt, EX_IO, kind);
	}
}