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
typedef  int u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int FDDIFC_CLFF ; 
#define  FDDIFC_IMP_ASYNC 140 
#define  FDDIFC_IMP_SYNC 139 
#define  FDDIFC_LLC_ASYNC 138 
#define  FDDIFC_LLC_SYNC 137 
#define  FDDIFC_MAC 136 
#define  FDDIFC_MAC_BEACON 135 
#define  FDDIFC_MAC_CLAIM 134 
#define  FDDIFC_NRT 133 
#define  FDDIFC_RT 132 
#define  FDDIFC_SMT 131 
#define  FDDIFC_SMT_INFO 130 
#define  FDDIFC_SMT_NSA 129 
#define  FDDIFC_VOID 128 
 int FDDIFC_ZZZZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC1(netdissect_options *ndo, u_char fc)
{
	switch (fc) {

	case FDDIFC_VOID:                         /* Void frame */
		FUNC0((ndo, "void "));
		break;

	case FDDIFC_NRT:                          /* Nonrestricted token */
		FUNC0((ndo, "nrt "));
		break;

	case FDDIFC_RT:                           /* Restricted token */
		FUNC0((ndo, "rt "));
		break;

	case FDDIFC_SMT_INFO:                     /* SMT Info */
		FUNC0((ndo, "info "));
		break;

	case FDDIFC_SMT_NSA:                      /* SMT Next station adrs */
		FUNC0((ndo, "nsa "));
		break;

	case FDDIFC_MAC_BEACON:                   /* MAC Beacon frame */
		FUNC0((ndo, "beacon "));
		break;

	case FDDIFC_MAC_CLAIM:                    /* MAC Claim frame */
		FUNC0((ndo, "claim "));
		break;

	default:
		switch (fc & FDDIFC_CLFF) {

		case FDDIFC_MAC:
			FUNC0((ndo, "mac%1x ", fc & FDDIFC_ZZZZ));
			break;

		case FDDIFC_SMT:
			FUNC0((ndo, "smt%1x ", fc & FDDIFC_ZZZZ));
			break;

		case FDDIFC_LLC_ASYNC:
			FUNC0((ndo, "async%1x ", fc & FDDIFC_ZZZZ));
			break;

		case FDDIFC_LLC_SYNC:
			FUNC0((ndo, "sync%1x ", fc & FDDIFC_ZZZZ));
			break;

		case FDDIFC_IMP_ASYNC:
			FUNC0((ndo, "imp_async%1x ", fc & FDDIFC_ZZZZ));
			break;

		case FDDIFC_IMP_SYNC:
			FUNC0((ndo, "imp_sync%1x ", fc & FDDIFC_ZZZZ));
			break;

		default:
			FUNC0((ndo, "%02x ", fc));
			break;
		}
	}
}