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
struct dpp_curve_params {int hash_len; } ;

/* Variables and functions */
 int FUNC0 (size_t,int /*<<< orphan*/  const**,size_t const*,int /*<<< orphan*/ *) ; 
 int FUNC1 (size_t,int /*<<< orphan*/  const**,size_t const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (size_t,int /*<<< orphan*/  const**,size_t const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(const struct dpp_curve_params *curve,
			   size_t num_elem, const u8 *addr[], const size_t *len,
			   u8 *mac)
{
	if (curve->hash_len == 32)
		return FUNC0(num_elem, addr, len, mac);
	if (curve->hash_len == 48)
		return FUNC1(num_elem, addr, len, mac);
	if (curve->hash_len == 64)
		return FUNC2(num_elem, addr, len, mac);
	return -1;
}