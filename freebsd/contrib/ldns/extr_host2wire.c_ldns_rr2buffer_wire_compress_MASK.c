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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_rbtree_t ;
typedef  int /*<<< orphan*/  ldns_buffer ;
struct TYPE_2__ {scalar_t__ _compress; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_COMPRESS ; 
 int LDNS_SECTION_QUESTION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/  const*) ; 

ldns_status
FUNC16(ldns_buffer *buffer, const ldns_rr *rr, int section, ldns_rbtree_t *compression_data)
{
	uint16_t i;
	uint16_t rdl_pos = 0;

	if (FUNC12(rr)) {
		(void) FUNC6(buffer, FUNC12(rr), compression_data);
	}
	
	if (FUNC1(buffer, 4)) {
		(void) FUNC3(buffer, FUNC11(rr));
		(void) FUNC3(buffer, FUNC10(rr));
	}

	if (section != LDNS_SECTION_QUESTION) {
		if (FUNC1(buffer, 6)) {
			FUNC5(buffer, FUNC15(rr));
			/* remember pos for later */
			rdl_pos = FUNC0(buffer);
			FUNC3(buffer, 0);
		}
		if (LDNS_RR_COMPRESS ==
		    FUNC9(FUNC11(rr))->_compress) {

			for (i = 0; i < FUNC13(rr); i++) {
				(void) FUNC8(buffer,
				    FUNC14(rr, i), compression_data);
			}
		} else {
			for (i = 0; i < FUNC13(rr); i++) {
				(void) FUNC7(
				    buffer, FUNC14(rr, i));
			}
		}
		if (rdl_pos != 0) {
			FUNC4(buffer, rdl_pos,
			                         FUNC0(buffer)
		        	                   - rdl_pos - 2);
		}
	}
	return FUNC2(buffer);
}