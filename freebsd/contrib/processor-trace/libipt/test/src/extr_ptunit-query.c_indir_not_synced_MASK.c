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
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {struct pt_query_decoder decoder; } ;

/* Variables and functions */
 int /*<<< orphan*/  pt_dfix_bad_ip ; 
 int FUNC0 (struct pt_query_decoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pte_nosync ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ptunit_result FUNC4(struct ptu_decoder_fixture *dfix)
{
	struct pt_query_decoder *decoder = &dfix->decoder;
	uint64_t ip = pt_dfix_bad_ip, addr = ip;
	int errcode;

	errcode = FUNC0(decoder, &addr);
	FUNC1(errcode, -pte_nosync);
	FUNC3(addr, ip);

	return FUNC2();
}