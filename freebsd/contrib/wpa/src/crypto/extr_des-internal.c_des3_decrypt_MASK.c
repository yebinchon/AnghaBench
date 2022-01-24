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
typedef  int /*<<< orphan*/  u32 ;
struct des3_key_s {int /*<<< orphan*/ * dk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(const u8 *crypt, const struct des3_key_s *key, u8 *plain)
{
	u32 work[2];

	work[0] = FUNC0(crypt);
	work[1] = FUNC0(crypt + 4);
	FUNC2(work, key->dk[0]);
	FUNC2(work, key->dk[1]);
	FUNC2(work, key->dk[2]);
	FUNC1(plain, work[0]);
	FUNC1(plain + 4, work[1]);
}