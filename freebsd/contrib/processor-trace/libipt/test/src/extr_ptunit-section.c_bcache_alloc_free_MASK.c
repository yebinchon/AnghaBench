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
typedef  int uint8_t ;
struct section_fixture {struct pt_block_cache* section; int /*<<< orphan*/  name; } ;
struct ptunit_result {int dummy; } ;
struct pt_block_cache {int /*<<< orphan*/  size; int /*<<< orphan*/  nentries; } ;

/* Variables and functions */
 int FUNC0 (struct pt_block_cache**,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct pt_block_cache*) ; 
 struct pt_block_cache* FUNC2 (struct pt_block_cache*) ; 
 int FUNC3 (struct pt_block_cache*) ; 
 int FUNC4 (struct pt_block_cache*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pt_block_cache*) ; 
 struct ptunit_result FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct pt_block_cache*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct section_fixture*,int*) ; 

__attribute__((used)) static struct ptunit_result FUNC11(struct section_fixture *sfix)
{
	uint8_t bytes[] = { 0xcc, 0x2, 0x4, 0x6 };
	struct pt_block_cache *bcache;
	int errcode;

	FUNC10(sfix, bytes);

	errcode = FUNC0(&sfix->section, sfix->name, 0x1ull, 0x3ull);
	FUNC5(errcode, 0);
	FUNC8(sfix->section);

	errcode = FUNC3(sfix->section);
	FUNC5(errcode, 0);

	errcode = FUNC1(sfix->section);
	FUNC5(errcode, 0);

	bcache = FUNC2(sfix->section);
	FUNC8(bcache);
	FUNC9(bcache->nentries, sfix->section->size);

	errcode = FUNC4(sfix->section);
	FUNC5(errcode, 0);

	bcache = FUNC2(sfix->section);
	FUNC6(bcache);

	return FUNC7();
}