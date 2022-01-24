#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_short ;
struct TYPE_3__ {int /*<<< orphan*/  followedby; int /*<<< orphan*/  token; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  current_keyword ; 
 TYPE_1__* ntp_keywords ; 
 int sst_highwater ; 

__attribute__((used)) static u_short
FUNC2(void)
{
	u_short scanner;
	u_short i;

	sst_highwater = 1;	/* index 0 invalid, unused */
	scanner = 0;

	for (i = 0; i < FUNC0(ntp_keywords); i++) {
		current_keyword = ntp_keywords[i].key;
		scanner =
		    FUNC1(
			ntp_keywords[i].key,
			ntp_keywords[i].token,
			ntp_keywords[i].followedby,
			scanner);
	}

	return scanner;
}