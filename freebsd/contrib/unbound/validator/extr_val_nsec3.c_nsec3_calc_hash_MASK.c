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
struct regional {int dummy; } ;
struct nsec3_cached_hash {size_t dname_len; size_t hash_len; int /*<<< orphan*/ * hash; int /*<<< orphan*/ * dname; int /*<<< orphan*/  rr; int /*<<< orphan*/  nsec3; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*) ; 
 size_t FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (struct regional*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int,unsigned char*,int /*<<< orphan*/ ,unsigned char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int
FUNC13(struct regional* region, sldns_buffer* buf, 
	struct nsec3_cached_hash* c)
{
	int algo = FUNC1(c->nsec3, c->rr);
	size_t iter = FUNC2(c->nsec3, c->rr);
	uint8_t* salt;
	size_t saltlen, i;
	if(!FUNC3(c->nsec3, c->rr, &salt, &saltlen))
		return -1;
	/* prepare buffer for first iteration */
	FUNC9(buf);
	FUNC12(buf, c->dname, c->dname_len);
	FUNC5(FUNC8(buf));
	FUNC12(buf, salt, saltlen);
	FUNC10(buf);
	c->hash_len = FUNC4(algo);
	if(c->hash_len == 0) {
		FUNC0("nsec3 hash of unknown algo %d", algo);
		return -1;
	}
	c->hash = (uint8_t*)FUNC6(region, c->hash_len);
	if(!c->hash)
		return 0;
	(void)FUNC7(algo, (unsigned char*)FUNC8(buf),
		FUNC11(buf), (unsigned char*)c->hash);
	for(i=0; i<iter; i++) {
		FUNC9(buf);
		FUNC12(buf, c->hash, c->hash_len);
		FUNC12(buf, salt, saltlen);
		FUNC10(buf);
		(void)FUNC7(algo,
			(unsigned char*)FUNC8(buf),
			FUNC11(buf), (unsigned char*)c->hash);
	}
	return 1;
}