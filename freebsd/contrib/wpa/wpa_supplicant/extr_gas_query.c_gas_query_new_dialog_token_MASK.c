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
struct gas_query {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct gas_query*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC1(struct gas_query *gas, const u8 *dst)
{
	static int next_start = 0;
	int dialog_token;

	for (dialog_token = 0; dialog_token < 256; dialog_token++) {
		if (FUNC0(
			    gas, dst, (next_start + dialog_token) % 256))
			break;
	}
	if (dialog_token == 256)
		return -1; /* Too many pending queries */
	dialog_token = (next_start + dialog_token) % 256;
	next_start = (dialog_token + 1) % 256;
	return dialog_token;
}