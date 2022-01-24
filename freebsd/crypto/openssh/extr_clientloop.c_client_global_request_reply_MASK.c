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
typedef  int /*<<< orphan*/  u_int32_t ;
struct ssh {int dummy; } ;
struct global_confirm {scalar_t__ ref_count; int /*<<< orphan*/  ctx; int /*<<< orphan*/  (* cb ) (struct ssh*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 struct global_confirm* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct global_confirm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC2 (struct global_confirm*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct global_confirm*) ; 
 int /*<<< orphan*/  global_confirms ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ssh*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(int type, u_int32_t seq, struct ssh *ssh)
{
	struct global_confirm *gc;

	if ((gc = FUNC0(&global_confirms)) == NULL)
		return 0;
	if (gc->cb != NULL)
		gc->cb(ssh, type, seq, gc->ctx);
	if (--gc->ref_count <= 0) {
		FUNC1(&global_confirms, gc, entry);
		FUNC2(gc, sizeof(*gc));
		FUNC3(gc);
	}

	FUNC4(0);
	return 0;
}