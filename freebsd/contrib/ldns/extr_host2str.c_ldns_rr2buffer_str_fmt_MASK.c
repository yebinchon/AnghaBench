#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
typedef  scalar_t__ ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_rdf ;
struct TYPE_4__ {scalar_t__ data; } ;
typedef  TYPE_1__ ldns_rbnode_t ;
struct TYPE_5__ {int flags; int /*<<< orphan*/ * hashmap; } ;
typedef  TYPE_2__ ldns_output_format_storage ;
typedef  int /*<<< orphan*/  ldns_output_format ;
typedef  int /*<<< orphan*/  ldns_dnssec_name ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 int LDNS_COMMENT_BUBBLEBABBLE ; 
 int LDNS_COMMENT_FLAGS ; 
 int LDNS_COMMENT_KEY ; 
 int LDNS_COMMENT_KEY_ID ; 
 int LDNS_COMMENT_KEY_SIZE ; 
 int LDNS_COMMENT_KEY_TYPE ; 
 int LDNS_COMMENT_NSEC3_CHAIN ; 
 int LDNS_COMMENT_NULLS ; 
 int LDNS_COMMENT_RRSIGS ; 
 int LDNS_FMT_PAD_SOA_SERIAL ; 
 int LDNS_FMT_ZEROIZE_RRSIGS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int LDNS_KEY_SEP_KEY ; 
 int LDNS_KEY_ZONE_KEY ; 
 scalar_t__ LDNS_RDF_TYPE_B64 ; 
 scalar_t__ LDNS_RDF_TYPE_INT32 ; 
 scalar_t__ LDNS_RDF_TYPE_TIME ; 
#define  LDNS_RR_TYPE_DNSKEY 131 
#define  LDNS_RR_TYPE_DS 130 
#define  LDNS_RR_TYPE_NSEC3 129 
#define  LDNS_RR_TYPE_RRSIG 128 
 int LDNS_RR_TYPE_SOA ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ ldns_output_format_default ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 size_t FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/  const*) ; 
 int FUNC25 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/  const*) ; 
 int FUNC28 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC29 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ *,int) ; 

ldns_status
FUNC32(ldns_buffer *output, 
		const ldns_output_format *fmt, const ldns_rr *rr)
{
	uint16_t i, flags;
	ldns_status status = LDNS_STATUS_OK;
	ldns_output_format_storage* fmt_st = (ldns_output_format_storage*)fmt;

	if (fmt_st == NULL) {
		fmt_st = (ldns_output_format_storage*)
			  ldns_output_format_default;
	}
	if (!rr) {
		if (LDNS_COMMENT_NULLS & fmt_st->flags) {
			FUNC3(output, "; (null)\n");
		}
		return FUNC4(output);
	}
	if (FUNC27(rr)) {
		status = FUNC13(output, FUNC27(rr));
	}
	if (status != LDNS_STATUS_OK) {
		return status;
	}

	/* TTL should NOT be printed if it is a question */
	if (!FUNC26(rr)) {
		FUNC3(output, "\t%d", FUNC30(rr));
	}

	FUNC3(output, "\t");
	status = FUNC22(output, FUNC24(rr));
	if (status != LDNS_STATUS_OK) {
		return status;
	}
	FUNC3(output, "\t");

	if (FUNC10(fmt, FUNC25(rr))) {
		return FUNC21(output, rr);
	}
	status = FUNC31(output, FUNC25(rr));
	if (status != LDNS_STATUS_OK) {
		return status;
	}

	if (FUNC28(rr) > 0) {
		FUNC3(output, "\t");
	} else if (!FUNC26(rr)) {
		FUNC3(output, "\t\\# 0");
	}

	for (i = 0; i < FUNC28(rr); i++) {
		/* ldns_rdf2buffer_str handles NULL input fine! */
		if ((fmt_st->flags & LDNS_FMT_ZEROIZE_RRSIGS) &&
				(FUNC25(rr) == LDNS_RR_TYPE_RRSIG) &&
				((/* inception  */ i == 4 &&
				  FUNC18(FUNC29(rr, 4)) == 
							LDNS_RDF_TYPE_TIME) ||
				  (/* expiration */ i == 5 &&
				   FUNC18(FUNC29(rr, 5)) ==
				   			LDNS_RDF_TYPE_TIME) ||
				  (/* signature  */ i == 8 &&
				   FUNC18(FUNC29(rr, 8)) ==
				   			LDNS_RDF_TYPE_B64))) {

			FUNC3(output, "(null)");
			status = FUNC4(output);
		} else if ((fmt_st->flags & LDNS_FMT_PAD_SOA_SERIAL) &&
				(FUNC25(rr) == LDNS_RR_TYPE_SOA) &&
				/* serial */ i == 2 &&
			 	FUNC18(FUNC29(rr, 2)) ==
			 				LDNS_RDF_TYPE_INT32) {
			FUNC3(output, "%10lu",
				(unsigned long) FUNC20(
					FUNC16(FUNC29(rr, 2))));
			status = FUNC4(output);
		} else {
			status = FUNC14(output,
					fmt, FUNC29(rr, i));
		}
		if(status != LDNS_STATUS_OK)
			return status;
		if (i < FUNC28(rr) - 1) {
			FUNC3(output, " ");
		}
	}
	/* per RR special comments - handy for DNSSEC types */
	/* check to prevent question sec. rr from
	 * getting here */
	if (FUNC28(rr) > 0) {
		switch (FUNC25(rr)) {
		case LDNS_RR_TYPE_DNSKEY:
			/* if ldns_rr_rd_count(rr) > 0
				then ldns_rr_rdf(rr, 0) exists! */
			if (! (fmt_st->flags & LDNS_COMMENT_KEY)) {
				break;
			}
			flags = FUNC15(FUNC29(rr, 0));
			FUNC3(output, " ;{");
			if (fmt_st->flags & LDNS_COMMENT_KEY_ID) {
				FUNC3(output, "id = %u",
					(unsigned int) FUNC5(rr));
			}
			if ((fmt_st->flags & LDNS_COMMENT_KEY_TYPE) &&
					(flags & LDNS_KEY_ZONE_KEY)){

				if (flags & LDNS_KEY_SEP_KEY) {
					FUNC3(output, " (ksk)");
				} else {
					FUNC3(output, " (zsk)");
				}
				if (fmt_st->flags & LDNS_COMMENT_KEY_SIZE){
					FUNC3(output, ", ");
				}
			} else if (fmt_st->flags
					& (LDNS_COMMENT_KEY_ID
						|LDNS_COMMENT_KEY_SIZE)) {
				FUNC3( output, ", ");
			}
			if (fmt_st->flags & LDNS_COMMENT_KEY_SIZE) {
				FUNC3(output, "size = %db",
					FUNC23(rr));
			}
			FUNC3(output, "}");
			break;
		case LDNS_RR_TYPE_RRSIG:
			if ((fmt_st->flags & LDNS_COMMENT_KEY)
					&& (fmt_st->flags& LDNS_COMMENT_RRSIGS)
					&& FUNC29(rr, 6) != NULL) {
				FUNC3(output, " ;{id = %d}",
						FUNC15(
							FUNC29(rr, 6)));
			}
			break;
		case LDNS_RR_TYPE_DS:
			if ((fmt_st->flags & LDNS_COMMENT_BUBBLEBABBLE) &&
					FUNC29(rr, 3) != NULL) {

				uint8_t *data = FUNC16(
						FUNC29(rr, 3));
				size_t len = FUNC19(FUNC29(rr, 3));
				char *babble = FUNC2(data, len);
				if(babble) {
					FUNC3(output,
							" ;{%s}", babble);
				}
				FUNC0(babble);
			}
			break;
		case LDNS_RR_TYPE_NSEC3:
			if (! (fmt_st->flags & LDNS_COMMENT_FLAGS) &&
				! (fmt_st->flags & LDNS_COMMENT_NSEC3_CHAIN)) {
				break;
			}
			FUNC3(output, " ;{");
			if ((fmt_st->flags & LDNS_COMMENT_FLAGS)) {
				if (FUNC9(rr)) {
					FUNC3(output,
						" flags: optout");
				} else {
					FUNC3(output," flags: -");
				}
				if (fmt_st->flags & LDNS_COMMENT_NSEC3_CHAIN &&
						fmt_st->hashmap != NULL) {
					FUNC3(output, ", ");
				}
			}
			if (fmt_st->flags & LDNS_COMMENT_NSEC3_CHAIN &&
					fmt_st->hashmap != NULL) {
				ldns_rbnode_t *node;
				ldns_rdf *key = FUNC6(
						FUNC27(rr), 0);
				if (key) {
					node = FUNC11(
						fmt_st->hashmap,
						(void *) key);
					if (node->data) {
						FUNC3(output,
							"from: ");
						(void) FUNC12(
							output,
							FUNC7(
							   (ldns_dnssec_name*)
							   node->data
							));
					}
					FUNC17(key);
				}
				key = FUNC1(
						FUNC8(rr));
				if (key) {
					node = FUNC11(
						fmt_st->hashmap,
						(void *) key);
					if (node->data) {
						FUNC3(output,
							" to: ");
						(void) FUNC12(
							output,
							FUNC7(
							   (ldns_dnssec_name*)
							   node->data
							));
					}
					FUNC17(key);
				}
			}
			FUNC3(output, "}");
			break;
		default:
			break;

		}
	}
	/* last */
	FUNC3(output, "\n");
	return FUNC4(output);
}