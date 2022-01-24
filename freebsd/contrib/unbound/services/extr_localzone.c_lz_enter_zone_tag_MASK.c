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
struct local_zones {int /*<<< orphan*/  lock; } ;
struct local_zone {size_t taglen; int /*<<< orphan*/  lock; scalar_t__ taglist; } ;
typedef  int /*<<< orphan*/  dname ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_MAX_DOMAINLEN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct local_zone* FUNC2 (struct local_zones*,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ *,size_t*) ; 

__attribute__((used)) static int
FUNC9(struct local_zones* zones, char* zname, uint8_t* list,
	size_t len, uint16_t rr_class)
{
	uint8_t dname[LDNS_MAX_DOMAINLEN+1];
	size_t dname_len = sizeof(dname);
	int dname_labs, r = 0;
	struct local_zone* z;

	if(FUNC8(zname, dname, &dname_len) != 0) {
		FUNC6("cannot parse zone name in local-zone-tag: %s", zname);
		return 0;
	}
	dname_labs = FUNC0(dname);
	
	FUNC3(&zones->lock);
	z = FUNC2(zones, dname, dname_len, dname_labs, rr_class);
	if(!z) {
		FUNC4(&zones->lock);
		FUNC6("no local-zone for tag %s", zname);
		return 0;
	}
	FUNC5(&z->lock);
	FUNC4(&zones->lock);
	FUNC1(z->taglist);
	z->taglist = FUNC7(list, len);
	z->taglen = len;
	if(z->taglist)
		r = 1;
	FUNC4(&z->lock);
	return r;
}