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
struct trust_anchor {int /*<<< orphan*/  lock; int /*<<< orphan*/  autr; } ;

/* Variables and functions */
 struct trust_anchor* FUNC0 (struct val_anchors*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 struct trust_anchor* FUNC1 (struct val_anchors*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t,size_t) ; 

__attribute__((used)) static struct trust_anchor*
FUNC7(struct val_anchors* anchors, uint8_t* rr, size_t rr_len,
	size_t dname_len)
{
	struct trust_anchor* tp;
	tp = FUNC0(anchors, rr, FUNC2(rr), dname_len,
		FUNC6(rr, rr_len, dname_len));
	if(tp) {
		if(!tp->autr) {
			FUNC5("anchor cannot be with and without autotrust");
			FUNC4(&tp->lock);
			return NULL;
		}
		return tp;
	}
	tp = FUNC1(anchors, rr, dname_len, FUNC6(rr,
		rr_len, dname_len));
	if(!tp)	
		return NULL;
	FUNC3(&tp->lock);
	return tp;
}