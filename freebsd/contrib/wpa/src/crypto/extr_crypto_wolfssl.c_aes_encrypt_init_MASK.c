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
typedef  void Aes ;

/* Variables and functions */
 int /*<<< orphan*/  AES_ENCRYPTION ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int) ; 
 scalar_t__ FUNC3 (void*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void * FUNC4(const u8 *key, size_t len)
{
	Aes *aes;

	if (FUNC0())
		return NULL;

	aes = FUNC2(sizeof(Aes));
	if (!aes)
		return NULL;

	if (FUNC3(aes, key, len, NULL, AES_ENCRYPTION) < 0) {
		FUNC1(aes);
		return NULL;
	}

	return aes;
}