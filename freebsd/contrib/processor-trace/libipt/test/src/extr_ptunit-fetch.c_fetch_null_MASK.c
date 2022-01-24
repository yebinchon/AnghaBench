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
struct ptunit_result {int dummy; } ;
struct pt_decoder_function {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * begin; } ;
struct fetch_fixture {TYPE_1__ config; } ;

/* Variables and functions */
 int FUNC0 (struct pt_decoder_function const**,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  pte_internal ; 
 int /*<<< orphan*/  pte_nosync ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 

__attribute__((used)) static struct ptunit_result FUNC3(struct fetch_fixture *ffix)
{
	const struct pt_decoder_function *dfun;
	int errcode;

	errcode = FUNC0(NULL, ffix->config.begin, &ffix->config);
	FUNC1(errcode, -pte_internal);

	errcode = FUNC0(&dfun, NULL, &ffix->config);
	FUNC1(errcode, -pte_nosync);

	errcode = FUNC0(&dfun, ffix->config.begin, NULL);
	FUNC1(errcode, -pte_internal);

	return FUNC2();
}