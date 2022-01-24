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
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned char*,int /*<<< orphan*/ ,unsigned char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

size_t
FUNC9(sldns_buffer* buf, uint8_t* nm, size_t nmlen, int algo, 
	size_t iter, uint8_t* salt, size_t saltlen, uint8_t* res, size_t max)
{
	size_t i, hash_len;
	/* prepare buffer for first iteration */
	FUNC5(buf);
	FUNC8(buf, nm, nmlen);
	FUNC2(FUNC4(buf));
	FUNC8(buf, salt, saltlen);
	FUNC6(buf);
	hash_len = FUNC1(algo);
	if(hash_len == 0) {
		FUNC0("nsec3 hash of unknown algo %d", algo);
		return 0;
	}
	if(hash_len > max)
		return 0;
	if(!FUNC3(algo, (unsigned char*)FUNC4(buf),
		FUNC7(buf), (unsigned char*)res))
		return 0;
	for(i=0; i<iter; i++) {
		FUNC5(buf);
		FUNC8(buf, res, hash_len);
		FUNC8(buf, salt, saltlen);
		FUNC6(buf);
		if(!FUNC3(algo,
			(unsigned char*)FUNC4(buf),
			FUNC7(buf), (unsigned char*)res))
			return 0;
	}
	return hash_len;
}