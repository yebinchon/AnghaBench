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
typedef  int /*<<< orphan*/  uint8_t ;
struct val_anchors {int dummy; } ;
struct trust_anchor {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_QUERY ; 
 struct trust_anchor* FUNC0 (struct val_anchors*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t,size_t) ; 

__attribute__((used)) static struct trust_anchor*
FUNC6(struct val_anchors* anchors, uint8_t* rr, size_t rl,
	size_t dl)
{
	struct trust_anchor* ta;
	if(!(ta=FUNC0(anchors, rr,
		FUNC5(rr, rl, dl),
		FUNC2(rr, rl, dl),
		FUNC4(rr, rl, dl),
		FUNC3(rr, rl, dl)+2))) {
		return NULL;
	}
	FUNC1(VERB_QUERY, "adding trusted key",
		rr, FUNC5(rr, rl, dl),
		FUNC2(rr, rl, dl));
	return ta;
}