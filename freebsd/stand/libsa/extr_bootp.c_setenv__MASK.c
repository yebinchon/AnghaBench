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
typedef  int uint32_t ;
typedef  scalar_t__ u_char ;
typedef  int /*<<< orphan*/  tags ;
struct in_addr {char s_addr; } ;
struct dhcp_opt {scalar_t__ tag; int fmt; char* desc; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 void* FLD_SEP ; 
 scalar_t__ TAG_END ; 
#define  __16 137 
#define  __32 136 
#define  __8 135 
#define  __BYTES 134 
#define  __ILIST 133 
#define  __INDIR 132 
#define  __IP 131 
#define  __NONE 130 
#define  __TXT 129 
#define  __VE 128 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,char*,unsigned int) ; 
 struct dhcp_opt* dhcp_opt ; 
 char* FUNC1 (struct in_addr) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,scalar_t__,...) ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct dhcp_opt* vndr_opt ; 

__attribute__((used)) static void
FUNC6(u_char *cp,  u_char *ep, struct dhcp_opt *opts)
{
    u_char	*ncp;
    u_char	tag;
    char	tags[512], *tp;	/* the list of tags */

#define FLD_SEP	','	/* separator in list of elements */
    ncp = cp;
    tp = tags;
    if (opts == NULL)
	opts = dhcp_opt;

    while (ncp < ep) {
	unsigned int	size;		/* option size */
	char *vp, *endv, buf[256];	/* the value buffer */
	struct dhcp_opt *op;

	tag = *ncp++;			/* extract tag and size */
	size = *ncp++;
	cp = ncp;			/* current payload */
	ncp += size;			/* point to the next option */

	if (tag == TAG_END)
	    break;
	if (tag == 0)
	    continue;

	for (op = opts+1; op->tag && op->tag != tag; op++)
		;
	/* if not found we end up on the default entry */

	/*
	 * Copy data into the buffer. libstand does not have snprintf so we
	 * need to be careful with sprintf(). With strings, the source is
	 * always <256 char so shorter than the buffer so we are safe; with
	 * other arguments, the longest string is inet_ntoa which is 16 bytes
	 * so we make sure to have always enough room in the string before
	 * trying an sprint.
	 */
	vp = buf;
	*vp = '\0';
	endv = buf + sizeof(buf) - 1 - 16;	/* last valid write position */

	switch(op->fmt) {
	case __NONE:
	    break;	/* should not happen */

	case __VE: /* recurse, vendor specific */
	    FUNC6(cp, cp+size, vndr_opt);
	    break;

	case __IP:	/* ip address */
	    for (; size > 0 && vp < endv; size -= 4, cp += 4) {
		struct	in_addr in_ip;		/* ip addresses */
		if (vp != buf)
		    *vp++ = FLD_SEP;
		FUNC0(cp, &in_ip.s_addr, sizeof(in_ip.s_addr));
		FUNC3(vp, "%s", FUNC1(in_ip));
		vp += FUNC5(vp);
	    }
	    break;

	case __BYTES:	/* opaque byte string */
	    for (; size > 0 && vp < endv; size -= 1, cp += 1) {
		FUNC3(vp, "%02x", *cp);
		vp += FUNC5(vp);
	    }
	    break;

	case __TXT:
	    FUNC0(cp, buf, size);	/* cannot overflow */
	    buf[size] = 0;
	    break;

	case __32:
	case __16:
	case __8:	/* op->fmt is also the length of each field */
	    for (; size > 0 && vp < endv; size -= op->fmt, cp += op->fmt) {
		uint32_t v;
		if (op->fmt == __32)
			v = (cp[0]<<24) + (cp[1]<<16) + (cp[2]<<8) + cp[3];
		else if (op->fmt == __16)
			v = (cp[0]<<8) + cp[1];
		else
			v = cp[0];
		if (vp != buf)
		    *vp++ = FLD_SEP;
		FUNC3(vp, "%u", v);
		vp += FUNC5(vp);
	    }
	    break;

	case __INDIR:	/* name=value */
	case __ILIST:	/* name=value;name=value... */
	    FUNC0(cp, buf, size);	/* cannot overflow */
	    buf[size] = '\0';
	    for (endv = buf; endv; endv = vp) {
		char *s = NULL;	/* semicolon ? */

		/* skip leading whitespace */
		while (*endv && FUNC4(" \t\n\r", *endv))
		    endv++;
		vp = FUNC4(endv, '=');	/* find name=value separator */
		if (!vp)
		    break;
		*vp++ = 0;
		if (op->fmt == __ILIST && (s = FUNC4(vp, ';')))
		    *s++ = '\0';
		FUNC2(endv, vp, 1);
		vp = s;	/* prepare for next round */
	    }
	    buf[0] = '\0';	/* option already done */
	}

	if (tp - tags < sizeof(tags) - 5) {	/* add tag to the list */
	    if (tp != tags)
		*tp++ = FLD_SEP;
	    FUNC3(tp, "%d", tag);
	    tp += FUNC5(tp);
	}
	if (buf[0]) {
	    char	env[128];	/* the string name */

	    if (op->tag == 0)
		FUNC3(env, op->desc, opts[0].desc, tag);
	    else
		FUNC3(env, "%s%s", opts[0].desc, op->desc);
	    /*
	     * Do not replace existing values in the environment, so that
	     * locally-obtained values can override server-provided values.
	     */
	    FUNC2(env, buf, 0);
	}
    }
    if (tp != tags) {
	char	env[128];	/* the string name */
	FUNC3(env, "%stags", opts[0].desc);
	FUNC2(env, tags, 1);
    }
}