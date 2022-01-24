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
struct qual {int proto; int dir; int addr; } ;
struct block {int dummy; } ;
typedef  int /*<<< orphan*/  compiler_state_t ;
typedef  int bpf_u_int32 ;

/* Variables and functions */
 int IPPROTO_SCTP ; 
 int IPPROTO_TCP ; 
 int IPPROTO_UDP ; 
 int PROTO_UNDEF ; 
 int Q_DECNET ; 
#define  Q_DEFAULT 136 
#define  Q_GATEWAY 135 
#define  Q_HOST 134 
 int Q_LINK ; 
#define  Q_NET 133 
#define  Q_PORT 132 
#define  Q_PORTRANGE 131 
#define  Q_PROTO 130 
#define  Q_PROTOCHAIN 129 
 int Q_SCTP ; 
 int Q_TCP ; 
 int Q_UDP ; 
#define  Q_UNDEF 128 
 int FUNC0 (char const*,int*) ; 
 int FUNC1 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 struct block* FUNC4 (int /*<<< orphan*/ *,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct block*) ; 
 struct block* FUNC6 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int,int) ; 
 struct block* FUNC8 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int,int,int) ; 
 struct block* FUNC10 (int /*<<< orphan*/ *,int,int,int) ; 
 struct block* FUNC11 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

struct block *
FUNC13(compiler_state_t *cstate, const char *s, bpf_u_int32 v, struct qual q)
{
	bpf_u_int32 mask;
	int proto = q.proto;
	int dir = q.dir;
	register int vlen;

	if (s == NULL)
		vlen = 32;
	else if (q.proto == Q_DECNET) {
		vlen = FUNC0(s, &v);
		if (vlen == 0)
			FUNC3(cstate, "malformed decnet address '%s'", s);
	} else
		vlen = FUNC1(s, &v);

	switch (q.addr) {

	case Q_DEFAULT:
	case Q_HOST:
	case Q_NET:
		if (proto == Q_DECNET)
			return FUNC4(cstate, v, 0, proto, dir, q.addr);
		else if (proto == Q_LINK) {
			FUNC3(cstate, "illegal link layer address");
		} else {
			mask = 0xffffffff;
			if (s == NULL && q.addr == Q_NET) {
				/* Promote short net number */
				while (v && (v & 0xff000000) == 0) {
					v <<= 8;
					mask <<= 8;
				}
			} else {
				/* Promote short ipaddr */
				v <<= 32 - vlen;
				mask <<= 32 - vlen ;
			}
			return FUNC4(cstate, v, mask, proto, dir, q.addr);
		}

	case Q_PORT:
		if (proto == Q_UDP)
			proto = IPPROTO_UDP;
		else if (proto == Q_TCP)
			proto = IPPROTO_TCP;
		else if (proto == Q_SCTP)
			proto = IPPROTO_SCTP;
		else if (proto == Q_DEFAULT)
			proto = PROTO_UNDEF;
		else
			FUNC3(cstate, "illegal qualifier of 'port'");

		if (v > 65535)
			FUNC3(cstate, "illegal port number %u > 65535", v);

	    {
		struct block *b;
		b = FUNC6(cstate, (int)v, proto, dir);
		FUNC5(FUNC7(cstate, (int)v, proto, dir), b);
		return b;
	    }

	case Q_PORTRANGE:
		if (proto == Q_UDP)
			proto = IPPROTO_UDP;
		else if (proto == Q_TCP)
			proto = IPPROTO_TCP;
		else if (proto == Q_SCTP)
			proto = IPPROTO_SCTP;
		else if (proto == Q_DEFAULT)
			proto = PROTO_UNDEF;
		else
			FUNC3(cstate, "illegal qualifier of 'portrange'");

		if (v > 65535)
			FUNC3(cstate, "illegal port number %u > 65535", v);

	    {
		struct block *b;
		b = FUNC8(cstate, (int)v, (int)v, proto, dir);
		FUNC5(FUNC9(cstate, (int)v, (int)v, proto, dir), b);
		return b;
	    }

	case Q_GATEWAY:
		FUNC3(cstate, "'gateway' requires a name");
		/* NOTREACHED */

	case Q_PROTO:
		return FUNC10(cstate, (int)v, proto, dir);

	case Q_PROTOCHAIN:
		return FUNC11(cstate, (int)v, proto, dir);

	case Q_UNDEF:
		FUNC12(cstate);
		/* NOTREACHED */

	default:
		FUNC2();
		/* NOTREACHED */
	}
	/* NOTREACHED */
}