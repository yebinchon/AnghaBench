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
typedef  int uint32_t ;
struct ptunit_result {int dummy; } ;
struct pt_last_ip {int ip; int have_ip; int suppressed; } ;

/* Variables and functions */
 int FUNC0 (struct pt_last_ip*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pte_internal ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static struct ptunit_result FUNC4(uint32_t have_ip)
{
	struct pt_last_ip last_ip;
	int errcode;

	last_ip.ip = 0x7fffffffffffffffull;
	last_ip.have_ip = have_ip;
	last_ip.suppressed = 0;

	errcode = FUNC0(&last_ip, NULL, NULL);
	FUNC1(errcode, -pte_internal);
	FUNC3(last_ip.ip, 0x7fffffffffffffffull);
	FUNC3(last_ip.have_ip, have_ip);
	FUNC3(last_ip.suppressed, 0);

	return FUNC2();
}