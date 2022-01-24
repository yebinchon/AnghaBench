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
struct atmif_reg {int /*<<< orphan*/  data; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ *,int,uintptr_t,int /*<<< orphan*/ ) ;} ;
struct atmif_priv {int /*<<< orphan*/  pub; int /*<<< orphan*/  notify; } ;
typedef  enum atmif_notify { ____Placeholder_atmif_notify } atmif_notify ;

/* Variables and functions */
 struct atmif_reg* FUNC0 (int /*<<< orphan*/ *) ; 
 struct atmif_reg* FUNC1 (struct atmif_reg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,uintptr_t,int /*<<< orphan*/ ) ; 

void
FUNC3(struct atmif_priv *aif, enum atmif_notify code,
    uintptr_t arg)
{
	struct atmif_reg *r0, *r1;

	r0 = FUNC0(&aif->notify);
	while (r0 != NULL) {
		r1 = FUNC1(r0, link);
		r0->func(&aif->pub, code, arg, r0->data);
		r0 = r1;
	}
}