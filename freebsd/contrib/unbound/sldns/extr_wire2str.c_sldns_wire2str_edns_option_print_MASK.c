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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;

/* Variables and functions */
#define  LDNS_EDNS_CLIENT_SUBNET 136 
#define  LDNS_EDNS_DAU 135 
#define  LDNS_EDNS_DHU 134 
#define  LDNS_EDNS_KEEPALIVE 133 
#define  LDNS_EDNS_LLQ 132 
#define  LDNS_EDNS_N3U 131 
#define  LDNS_EDNS_NSID 130 
#define  LDNS_EDNS_PADDING 129 
#define  LDNS_EDNS_UL 128 
 int FUNC0 (char**,size_t*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (char**,size_t*,char*) ; 
 int FUNC2 (char**,size_t*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC3 (char**,size_t*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC4 (char**,size_t*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC5 (char**,size_t*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC6 (char**,size_t*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC7 (char**,size_t*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC8 (char**,size_t*,int) ; 
 int FUNC9 (char**,size_t*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC10 (char**,size_t*,int /*<<< orphan*/ *,size_t) ; 

int FUNC11(char** s, size_t* sl,
	uint16_t option_code, uint8_t* optdata, size_t optlen)
{
	int w = 0;
	w += FUNC8(s, sl, option_code);
	w += FUNC1(s, sl, ": ");
	switch(option_code) {
	case LDNS_EDNS_LLQ:
		w += FUNC5(s, sl, optdata, optlen);
		break;
	case LDNS_EDNS_UL:
		w += FUNC10(s, sl, optdata, optlen);
		break;
	case LDNS_EDNS_NSID:
		w += FUNC7(s, sl, optdata, optlen);
		break;
	case LDNS_EDNS_DAU:
		w += FUNC2(s, sl, optdata, optlen);
		break;
	case LDNS_EDNS_DHU:
		w += FUNC3(s, sl, optdata, optlen);
		break;
	case LDNS_EDNS_N3U:
		w += FUNC6(s, sl, optdata, optlen);
		break;
	case LDNS_EDNS_CLIENT_SUBNET:
		w += FUNC9(s, sl, optdata, optlen);
		break;
	 case LDNS_EDNS_KEEPALIVE:
		w += FUNC4(s, sl, optdata, optlen);
		break;
	case LDNS_EDNS_PADDING:
		w += FUNC0(s, sl, optdata, optlen);
		break;
	default:
		/* unknown option code */
		w += FUNC0(s, sl, optdata, optlen);
		break;
	}
	return w;
}