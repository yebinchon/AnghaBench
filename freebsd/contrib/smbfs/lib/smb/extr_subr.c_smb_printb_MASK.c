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
struct smb_bitname {int bn_bit; char* bn_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

char *
FUNC2(char *dest, int flags, const struct smb_bitname *bnp) {
	int first = 1;

	FUNC1(dest, "<");
	for(; bnp->bn_bit; bnp++) {
		if (flags & bnp->bn_bit) {
			FUNC0(dest, bnp->bn_name);
			first = 0;
		}
		if (!first && (flags & bnp[1].bn_bit))
			FUNC0(dest, "|");
	}
	FUNC0(dest, ">");
	return dest;
}