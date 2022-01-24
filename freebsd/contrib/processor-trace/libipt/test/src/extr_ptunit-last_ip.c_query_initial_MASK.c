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
typedef  int /*<<< orphan*/  uint64_t ;
struct ptunit_result {int dummy; } ;
struct pt_last_ip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_last_ip*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct pt_last_ip*) ; 
 int /*<<< orphan*/  pte_noip ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC3 () ; 

__attribute__((used)) static struct ptunit_result FUNC4(void)
{
	struct pt_last_ip last_ip;
	uint64_t ip;
	int errcode;

	FUNC0(&last_ip);

	errcode = FUNC1(&ip, &last_ip);
	FUNC2(errcode, -pte_noip);

	return FUNC3();
}