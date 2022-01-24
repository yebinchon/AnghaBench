#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {scalar_t__ begin; } ;
struct sync_fixture {TYPE_1__ config; } ;
struct ptunit_result {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const**,scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  pte_eos ; 
 scalar_t__ ptps_psb ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static struct ptunit_result FUNC4(struct sync_fixture *sfix)
{
	const uint8_t *sync;
	int errcode;

	FUNC3(sfix->config.begin);

	errcode = FUNC0(&sync, sfix->config.begin + ptps_psb,
				  &sfix->config);
	FUNC1(errcode, -pte_eos);

	return FUNC2();
}