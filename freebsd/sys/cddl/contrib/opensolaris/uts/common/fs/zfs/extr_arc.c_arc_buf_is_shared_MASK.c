#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int boolean_t ;
struct TYPE_9__ {TYPE_4__* b_hdr; int /*<<< orphan*/ * b_data; } ;
typedef  TYPE_2__ arc_buf_t ;
struct TYPE_8__ {int /*<<< orphan*/ * b_pabd; } ;
struct TYPE_10__ {TYPE_1__ b_l1hdr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline boolean_t
FUNC7(arc_buf_t *buf)
{
	boolean_t shared = (buf->b_data != NULL &&
	    buf->b_hdr->b_l1hdr.b_pabd != NULL &&
	    FUNC5(buf->b_hdr->b_l1hdr.b_pabd) &&
	    buf->b_data == FUNC6(buf->b_hdr->b_l1hdr.b_pabd));
	FUNC4(shared, FUNC3(buf->b_hdr));
	FUNC4(shared, FUNC2(buf));
	FUNC4(shared, FUNC0(buf) || FUNC1(buf));

	/*
	 * It would be nice to assert arc_can_share() too, but the "hdr isn't
	 * already being shared" requirement prevents us from doing that.
	 */

	return (shared);
}