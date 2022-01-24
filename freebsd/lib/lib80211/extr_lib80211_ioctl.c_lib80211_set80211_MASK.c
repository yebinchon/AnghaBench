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
struct ieee80211req {int i_type; int i_val; int i_len; void* i_data; int /*<<< orphan*/  i_name; } ;
typedef  int /*<<< orphan*/  ireq ;

/* Variables and functions */
 int /*<<< orphan*/  SIOCS80211 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct ieee80211req*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211req*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 

int
FUNC4(int s, const char *name, int type, int val, int len, void *data)
{
	struct ieee80211req	ireq;

	(void) FUNC2(&ireq, 0, sizeof(ireq));
	(void) FUNC3(ireq.i_name, name, sizeof(ireq.i_name));
	ireq.i_type = type;
	ireq.i_val = val;
	ireq.i_len = len;
	FUNC0(ireq.i_len == len);	/* NB: check for 16-bit truncation */
	ireq.i_data = data;
	if (FUNC1(s, SIOCS80211, &ireq) < 0)
		return (-1);
	return (0);
}