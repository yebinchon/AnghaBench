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
typedef  scalar_t__ uint16_t ;
struct val_anchors {int dummy; } ;
struct trust_anchor {int /*<<< orphan*/  lock; scalar_t__ numDNSKEY; scalar_t__ numDS; } ;

/* Variables and functions */
 struct trust_anchor* FUNC0 (struct val_anchors*,int /*<<< orphan*/ *,int,size_t,scalar_t__) ; 
 size_t FUNC1 (struct trust_anchor*,scalar_t__*,scalar_t__) ; 
 scalar_t__* FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct val_anchors* anchors, uint8_t* name, int namelabs,
	size_t namelen, uint16_t dclass, uint16_t keytag)
{
	uint16_t* taglist;
	uint16_t* tl;
	size_t numtag, i;
	struct trust_anchor* anchor = FUNC0(anchors,
		name, namelabs, namelen, dclass);
	if(!anchor)
		return 0;
	if(!anchor->numDS && !anchor->numDNSKEY) {
		FUNC4(&anchor->lock);
		return 0;
	}

	taglist = FUNC2(anchor->numDS + anchor->numDNSKEY, sizeof(*taglist));
	if(!taglist) {
		FUNC4(&anchor->lock);
		return 0;
	}

	numtag = FUNC1(anchor, taglist,
		anchor->numDS+anchor->numDNSKEY);
	FUNC4(&anchor->lock);
	if(!numtag) {
		FUNC3(taglist);
		return 0;
	}
	tl = taglist;
	for(i=0; i<numtag; i++) {
		if(*tl == keytag) {
			FUNC3(taglist);
			return 1;
		}
		tl++;
	}
	FUNC3(taglist);
	return 0;
}