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
struct pt_packet {int dummy; } ;
struct pt_decoder_function {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  begin; } ;
struct fetch_fixture {TYPE_1__ config; int /*<<< orphan*/  encoder; } ;

/* Variables and functions */
 int FUNC0 (struct pt_decoder_function const**,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct pt_packet const*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct pt_decoder_function const*,struct pt_decoder_function const*) ; 

__attribute__((used)) static struct ptunit_result FUNC6(struct fetch_fixture *ffix,
					 const struct pt_packet *packet,
					 const struct pt_decoder_function *df)
{
	const struct pt_decoder_function *dfun;
	int errcode;

	errcode = FUNC1(&ffix->encoder, packet);
	FUNC3(errcode, 0);

	errcode = FUNC0(&dfun, ffix->config.begin, &ffix->config);
	FUNC2(errcode, 0);
	FUNC5(dfun, df);

	return FUNC4();
}