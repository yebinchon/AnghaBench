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
 int /*<<< orphan*/  pt_decode_unknown ; 
 int FUNC0 (struct pt_decoder_function const**,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  pt_ext2_bad ; 
 int /*<<< orphan*/  pt_ext_ext2 ; 
 int /*<<< orphan*/  pt_opc_ext ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct pt_decoder_function const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ptunit_result FUNC4(struct fetch_fixture *ffix)
{
	const struct pt_decoder_function *dfun;
	int errcode;

	ffix->config.begin[0] = pt_opc_ext;
	ffix->config.begin[1] = pt_ext_ext2;
	ffix->config.begin[2] = pt_ext2_bad;

	errcode = FUNC0(&dfun, ffix->config.begin, &ffix->config);
	FUNC1(errcode, 0);
	FUNC3(dfun, &pt_decode_unknown);

	return FUNC2();
}