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
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct trust_anchor* FUNC1 (struct val_anchors*,int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ *,size_t*,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct trust_anchor*
FUNC7(struct val_anchors* anchors, sldns_buffer* buffer,
	const char* str)
{
	struct trust_anchor* ta;
	uint8_t* rr = FUNC3(buffer);
	size_t len = FUNC4(buffer), dname_len = 0;
	int status = FUNC6(str, rr, &len, &dname_len,
		0, NULL, 0, NULL, 0);
	if(status != 0) {
		FUNC2("error parsing trust anchor %s: at %d: %s", 
			str, FUNC0(status),
			FUNC5(status));
		return NULL;
	}
	if(!(ta=FUNC1(anchors, rr, len, dname_len))) {
		FUNC2("out of memory");
		return NULL;
	}
	return ta;
}