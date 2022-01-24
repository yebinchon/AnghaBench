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
typedef  int /*<<< orphan*/  u_char ;
struct z_packet {scalar_t__ kind; char const* class; char const* inst; char const* opcode; char const* sender; char const* recipient; char const* version; scalar_t__ numfields; char const* uid; scalar_t__ port; scalar_t__ auth; scalar_t__ authlen; char const* authdata; char const* format; scalar_t__ cksum; scalar_t__ multi; char const* multi_uid; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ Z_PACKET_SERVACK ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*,char const*) ; 
 int /*<<< orphan*/  z_types ; 

void
FUNC8(netdissect_options *ndo, const u_char *cp, int length)
{
    struct z_packet z;
    const char *parse = (const char *) cp;
    int parselen = length;
    const char *s;
    int lose = 0;
    int truncated = 0;

    /* squelch compiler warnings */

    z.kind = 0;
    z.class = 0;
    z.inst = 0;
    z.opcode = 0;
    z.sender = 0;
    z.recipient = 0;

#define PARSE_STRING						\
	s = parse_field(ndo, &parse, &parselen, &truncated);	\
	if (truncated) goto trunc;				\
	if (!s) lose = 1;

#define PARSE_FIELD_INT(field)			\
	PARSE_STRING				\
	if (!lose) field = strtol(s, 0, 16);

#define PARSE_FIELD_STR(field)			\
	PARSE_STRING				\
	if (!lose) field = s;

    PARSE_FIELD_STR(z.version);
    if (lose) return;
    if (FUNC5(z.version, "ZEPH", 4))
	return;

    PARSE_FIELD_INT(z.numfields);
    PARSE_FIELD_INT(z.kind);
    PARSE_FIELD_STR(z.uid);
    PARSE_FIELD_INT(z.port);
    PARSE_FIELD_INT(z.auth);
    PARSE_FIELD_INT(z.authlen);
    PARSE_FIELD_STR(z.authdata);
    PARSE_FIELD_STR(z.class);
    PARSE_FIELD_STR(z.inst);
    PARSE_FIELD_STR(z.opcode);
    PARSE_FIELD_STR(z.sender);
    PARSE_FIELD_STR(z.recipient);
    PARSE_FIELD_STR(z.format);
    PARSE_FIELD_INT(z.cksum);
    PARSE_FIELD_INT(z.multi);
    PARSE_FIELD_STR(z.multi_uid);

    if (lose)
        goto trunc;

    FUNC0((ndo, " zephyr"));
    if (FUNC5(z.version+4, "0.2", 3)) {
	FUNC0((ndo, " v%s", z.version+4));
	return;
    }

    FUNC0((ndo, " %s", FUNC6(z_types, "type %d", z.kind)));
    if (z.kind == Z_PACKET_SERVACK) {
	/* Initialization to silence warnings */
	const char *ackdata = NULL;
	PARSE_FIELD_STR(ackdata);
	if (!lose && FUNC4(ackdata, "SENT"))
	    FUNC0((ndo, "/%s", FUNC3(ackdata)));
    }
    if (*z.sender) FUNC0((ndo, " %s", z.sender));

    if (!FUNC4(z.class, "USER_LOCATE")) {
	if (!FUNC4(z.opcode, "USER_HIDE"))
	    FUNC0((ndo, " hide"));
	else if (!FUNC4(z.opcode, "USER_UNHIDE"))
	    FUNC0((ndo, " unhide"));
	else
	    FUNC0((ndo, " locate %s", z.inst));
	return;
    }

    if (!FUNC4(z.class, "ZEPHYR_ADMIN")) {
	FUNC0((ndo, " zephyr-admin %s", FUNC3(z.opcode)));
	return;
    }

    if (!FUNC4(z.class, "ZEPHYR_CTL")) {
	if (!FUNC4(z.inst, "CLIENT")) {
	    if (!FUNC4(z.opcode, "SUBSCRIBE") ||
		!FUNC4(z.opcode, "SUBSCRIBE_NODEFS") ||
		!FUNC4(z.opcode, "UNSUBSCRIBE")) {

		FUNC0((ndo, " %ssub%s", FUNC4(z.opcode, "SUBSCRIBE") ? "un" : "",
				   FUNC4(z.opcode, "SUBSCRIBE_NODEFS") ? "" :
								   "-nodefs"));
		if (z.kind != Z_PACKET_SERVACK) {
		    /* Initialization to silence warnings */
		    const char *c = NULL, *i = NULL, *r = NULL;
		    PARSE_FIELD_STR(c);
		    PARSE_FIELD_STR(i);
		    PARSE_FIELD_STR(r);
		    if (!lose) FUNC0((ndo, " %s", FUNC7(c, i, r)));
		}
		return;
	    }

	    if (!FUNC4(z.opcode, "GIMME")) {
		FUNC0((ndo, " ret"));
		return;
	    }

	    if (!FUNC4(z.opcode, "GIMMEDEFS")) {
		FUNC0((ndo, " gimme-defs"));
		return;
	    }

	    if (!FUNC4(z.opcode, "CLEARSUB")) {
		FUNC0((ndo, " clear-subs"));
		return;
	    }

	    FUNC0((ndo, " %s", FUNC3(z.opcode)));
	    return;
	}

	if (!FUNC4(z.inst, "HM")) {
	    FUNC0((ndo, " %s", FUNC3(z.opcode)));
	    return;
	}

	if (!FUNC4(z.inst, "REALM")) {
	    if (!FUNC4(z.opcode, "ADD_SUBSCRIBE"))
		FUNC0((ndo, " realm add-subs"));
	    if (!FUNC4(z.opcode, "REQ_SUBSCRIBE"))
		FUNC0((ndo, " realm req-subs"));
	    if (!FUNC4(z.opcode, "RLM_SUBSCRIBE"))
		FUNC0((ndo, " realm rlm-sub"));
	    if (!FUNC4(z.opcode, "RLM_UNSUBSCRIBE"))
		FUNC0((ndo, " realm rlm-unsub"));
	    return;
	}
    }

    if (!FUNC4(z.class, "HM_CTL")) {
	FUNC0((ndo, " hm_ctl %s", FUNC3(z.inst)));
	FUNC0((ndo, " %s", FUNC3(z.opcode)));
	return;
    }

    if (!FUNC4(z.class, "HM_STAT")) {
	if (!FUNC4(z.inst, "HMST_CLIENT") && !FUNC4(z.opcode, "GIMMESTATS")) {
	    FUNC0((ndo, " get-client-stats"));
	    return;
	}
    }

    if (!FUNC4(z.class, "WG_CTL")) {
	FUNC0((ndo, " wg_ctl %s", FUNC3(z.inst)));
	FUNC0((ndo, " %s", FUNC3(z.opcode)));
	return;
    }

    if (!FUNC4(z.class, "LOGIN")) {
	if (!FUNC4(z.opcode, "USER_FLUSH")) {
	    FUNC0((ndo, " flush_locs"));
	    return;
	}

	if (!FUNC4(z.opcode, "NONE") ||
	    !FUNC4(z.opcode, "OPSTAFF") ||
	    !FUNC4(z.opcode, "REALM-VISIBLE") ||
	    !FUNC4(z.opcode, "REALM-ANNOUNCED") ||
	    !FUNC4(z.opcode, "NET-VISIBLE") ||
	    !FUNC4(z.opcode, "NET-ANNOUNCED")) {
	    FUNC0((ndo, " set-exposure %s", FUNC3(z.opcode)));
	    return;
	}
    }

    if (!*z.recipient)
	z.recipient = "*";

    FUNC0((ndo, " to %s", FUNC7(z.class, z.inst, z.recipient)));
    if (*z.opcode)
	FUNC0((ndo, " op %s", z.opcode));
    return;

trunc:
    FUNC0((ndo, " [|zephyr] (%d)", length));
    return;
}