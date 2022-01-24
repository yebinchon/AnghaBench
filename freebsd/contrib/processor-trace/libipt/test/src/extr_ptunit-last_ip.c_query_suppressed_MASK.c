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
typedef  unsigned long long uint64_t ;
struct ptunit_result {int dummy; } ;
struct pt_last_ip {unsigned long long ip; int have_ip; int suppressed; } ;

/* Variables and functions */
 int FUNC0 (unsigned long long*,struct pt_last_ip*) ; 
 int /*<<< orphan*/  pte_ip_suppressed ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long long,unsigned long long) ; 

__attribute__((used)) static struct ptunit_result FUNC4(void)
{
	struct pt_last_ip last_ip;
	uint64_t ip = 13ull;
	int errcode;

	last_ip.ip = 42ull;
	last_ip.have_ip = 1;
	last_ip.suppressed = 1;

	errcode = FUNC0(&ip, &last_ip);
	FUNC1(errcode, -pte_ip_suppressed);
	FUNC3(ip, 0ull);

	return FUNC2();
}