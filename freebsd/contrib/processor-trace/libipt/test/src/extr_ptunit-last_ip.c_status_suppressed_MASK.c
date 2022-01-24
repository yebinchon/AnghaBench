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
struct pt_last_ip {int have_ip; int suppressed; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct pt_last_ip*) ; 
 int /*<<< orphan*/  pte_ip_suppressed ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 

__attribute__((used)) static struct ptunit_result FUNC3(void)
{
	struct pt_last_ip last_ip;
	int errcode;

	last_ip.have_ip = 1;
	last_ip.suppressed = 1;

	errcode = FUNC0(NULL, &last_ip);
	FUNC1(errcode, -pte_ip_suppressed);

	return FUNC2();
}