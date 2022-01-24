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
typedef  int /*<<< orphan*/  u8 ;
typedef  void symmetric_key ;

/* Variables and functions */
 scalar_t__ CRYPT_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int) ; 

void * FUNC3(const u8 *key, size_t len)
{
	symmetric_key *skey;
	skey = FUNC2(sizeof(*skey));
	if (skey == NULL)
		return NULL;
	if (FUNC0(key, len, 0, skey) != CRYPT_OK) {
		FUNC1(skey);
		return NULL;
	}
	return skey;
}