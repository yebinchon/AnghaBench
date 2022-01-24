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
struct ptunit_result {int dummy; } ;
struct pt_last_ip {int /*<<< orphan*/  suppressed; int /*<<< orphan*/  have_ip; int /*<<< orphan*/  ip; } ;
typedef  int /*<<< orphan*/  last_ip ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_last_ip*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_last_ip*) ; 
 struct ptunit_result FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static struct ptunit_result FUNC4(void)
{
	struct pt_last_ip last_ip;

	FUNC0(&last_ip, 0xcd, sizeof(last_ip));

	FUNC1(&last_ip);

	FUNC3(last_ip.ip, 0ull);
	FUNC3(last_ip.have_ip, 0);
	FUNC3(last_ip.suppressed, 0);

	return FUNC2();
}