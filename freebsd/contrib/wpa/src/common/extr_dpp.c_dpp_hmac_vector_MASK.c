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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*,size_t,size_t,int /*<<< orphan*/  const**,size_t const*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/  const*,size_t,size_t,int /*<<< orphan*/  const**,size_t const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/  const*,size_t,size_t,int /*<<< orphan*/  const**,size_t const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(size_t hash_len, const u8 *key, size_t key_len,
			   size_t num_elem, const u8 *addr[],
			   const size_t *len, u8 *mac)
{
	if (hash_len == 32)
		return FUNC0(key, key_len, num_elem, addr, len,
					  mac);
	if (hash_len == 48)
		return FUNC1(key, key_len, num_elem, addr, len,
					  mac);
	if (hash_len == 64)
		return FUNC2(key, key_len, num_elem, addr, len,
					  mac);
	return -1;
}