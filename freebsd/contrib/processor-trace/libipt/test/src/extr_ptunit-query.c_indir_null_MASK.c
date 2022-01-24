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
struct pt_config {int /*<<< orphan*/  begin; } ;
struct pt_query_decoder {int /*<<< orphan*/  pos; struct pt_config config; } ;
struct ptu_decoder_fixture {struct pt_query_decoder decoder; } ;

/* Variables and functions */
 int /*<<< orphan*/  pt_dfix_bad_ip ; 
 int FUNC0 (struct pt_query_decoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pte_invalid ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ptunit_result FUNC5(struct ptu_decoder_fixture *dfix)
{
	struct pt_query_decoder *decoder = &dfix->decoder;
	struct pt_config *config = &decoder->config;
	uint64_t ip = pt_dfix_bad_ip, addr = ip;
	int errcode;

	errcode = FUNC0(NULL, &addr);
	FUNC1(errcode, -pte_invalid);
	FUNC4(addr, ip);

	errcode = FUNC0(decoder, NULL);
	FUNC1(errcode, -pte_invalid);
	FUNC3(decoder->pos, config->begin);

	return FUNC2();
}