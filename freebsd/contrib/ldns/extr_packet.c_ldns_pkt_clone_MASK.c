#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_59__   TYPE_1__ ;

/* Type definitions */
struct TYPE_59__ {void* _additional; void* _authority; void* _answer; void* _question; int /*<<< orphan*/  _edns_present; } ;
typedef  TYPE_1__ ldns_pkt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*) ; 
 scalar_t__ FUNC5 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__ const*) ; 
 scalar_t__ FUNC9 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__ const*) ; 
 TYPE_1__* FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC44 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC45 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC48 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC49 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC50 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC51 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC52 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC53 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC54 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC55 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC56 (int /*<<< orphan*/ ) ; 
 void* FUNC57 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC58 (void*) ; 

ldns_pkt *
FUNC59(const ldns_pkt *pkt)
{
	ldns_pkt *new_pkt;
	
	if (!pkt) {
		return NULL;
	}
	new_pkt = FUNC18();

	FUNC38(new_pkt, FUNC17(pkt));
	FUNC42(new_pkt, FUNC21(pkt));
	FUNC26(new_pkt, FUNC0(pkt));
	FUNC48(new_pkt, FUNC52(pkt));
	FUNC46(new_pkt, FUNC25(pkt));
	FUNC31(new_pkt, FUNC8(pkt));
	FUNC44(new_pkt, FUNC24(pkt));
	FUNC27(new_pkt, FUNC1(pkt));
	FUNC40(new_pkt, FUNC15(pkt));
	FUNC45(new_pkt, FUNC16(pkt));
	FUNC41(new_pkt, FUNC20(pkt));
	FUNC28(new_pkt, FUNC3(pkt));
	FUNC39(new_pkt, FUNC19(pkt));
	FUNC30(new_pkt, FUNC6(pkt));
	if (FUNC5(pkt))
		FUNC29(new_pkt,
			FUNC55(FUNC5(pkt)));
	FUNC49(new_pkt, FUNC53(pkt));
	FUNC43(new_pkt, FUNC22(pkt));
	FUNC47(new_pkt, FUNC51(pkt));
	FUNC50(new_pkt, FUNC56(FUNC54(pkt)));
	
	FUNC35(new_pkt, FUNC12(pkt));
	FUNC34(new_pkt, 
		FUNC11(pkt));
	FUNC36(new_pkt, FUNC13(pkt));
	new_pkt->_edns_present = pkt->_edns_present;
	FUNC37(new_pkt, FUNC14(pkt));
	if(FUNC9(pkt))
		FUNC32(new_pkt, 
			FUNC55(FUNC9(pkt)));
	FUNC33(new_pkt, FUNC10(pkt));

	FUNC58(new_pkt->_question);
	FUNC58(new_pkt->_answer);
	FUNC58(new_pkt->_authority);
	FUNC58(new_pkt->_additional);
	new_pkt->_question = FUNC57(FUNC23(pkt));
	new_pkt->_answer = FUNC57(FUNC4(pkt));
	new_pkt->_authority = FUNC57(FUNC7(pkt));
	new_pkt->_additional = FUNC57(FUNC2(pkt));
	return new_pkt;
}