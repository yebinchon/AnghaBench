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
typedef  int /*<<< orphan*/  uint16_t ;
struct val_anchors {int dummy; } ;
struct trust_anchor {int dummy; } ;

/* Variables and functions */
 struct trust_anchor* FUNC0 (struct val_anchors*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,size_t*) ; 
 char* FUNC4 (char*,char) ; 

__attribute__((used)) static struct trust_anchor*
FUNC5(struct val_anchors* anchors, char* line)
{
	struct trust_anchor *tp;
	int r;
	uint16_t dclass;
	uint8_t* dname;
	size_t dname_len;
	/* read the owner name */
	char* next = FUNC4(line, ' ');
	if(!next)
		return NULL;
	next[0] = 0;
	dname = FUNC3(line, &dname_len);
	if(!dname)
		return NULL;

	/* read the class */
	dclass = FUNC2(next+1, &r);
	if(r == -1) {
		FUNC1(dname);
		return NULL;
	}

	/* find the trust point */
	tp = FUNC0(anchors, dname, dname_len, dclass);
	FUNC1(dname);
	return tp;
}