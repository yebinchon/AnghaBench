#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
struct TYPE_6__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int const,int) ; 
 int /*<<< orphan*/  FUNC4 (int const*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  opcode_str ; 
 int* FUNC6 (TYPE_1__*,int const*,char*,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int const*,int /*<<< orphan*/ ) ; 
 int const* startbuf ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  tstr ; 

void
FUNC9(netdissect_options *ndo,
                 const u_char *data, int length)
{
    const u_char *maxbuf = data + length;
    int name_trn_id, response, opcode, nm_flags, rcode;
    int qdcount, ancount, nscount, arcount;
    const u_char *p;
    int total, i;

    FUNC3(data[10], 2);
    name_trn_id = FUNC0(data);
    response = (data[2] >> 7);
    opcode = (data[2] >> 3) & 0xF;
    nm_flags = ((data[2] & 0x7) << 4) + (data[3] >> 4);
    rcode = data[3] & 0xF;
    qdcount = FUNC0(data + 4);
    ancount = FUNC0(data + 6);
    nscount = FUNC0(data + 8);
    arcount = FUNC0(data + 10);
    startbuf = data;

    if (maxbuf <= data)
	return;

    if (ndo->ndo_vflag > 1)
	FUNC1((ndo, "\n>>> "));

    FUNC1((ndo, "NBT UDP PACKET(137): %s", FUNC8(opcode_str, "OPUNKNOWN", opcode)));
    if (response) {
        FUNC1((ndo, "; %s", rcode ? "NEGATIVE" : "POSITIVE"));
    }
    FUNC1((ndo, "; %s; %s", response ? "RESPONSE" : "REQUEST",
              (nm_flags & 1) ? "BROADCAST" : "UNICAST"));

    if (ndo->ndo_vflag < 2)
	return;

    FUNC1((ndo, "\nTrnID=0x%X\nOpCode=%d\nNmFlags=0x%X\nRcode=%d\nQueryCount=%d\nAnswerCount=%d\nAuthorityCount=%d\nAddressRecCount=%d\n",
	name_trn_id, opcode, nm_flags, rcode, qdcount, ancount, nscount,
	arcount));

    p = data + 12;

    total = ancount + nscount + arcount;

    if (qdcount > 100 || total > 100) {
	FUNC1((ndo, "Corrupt packet??\n"));
	return;
    }

    if (qdcount) {
	FUNC1((ndo, "QuestionRecords:\n"));
	for (i = 0; i < qdcount; i++) {
	    p = FUNC6(ndo, p,
		"|Name=[n1]\nQuestionType=[rw]\nQuestionClass=[rw]\n#",
		maxbuf, 0);
	    if (p == NULL)
		goto out;
	}
    }

    if (total) {
	FUNC1((ndo, "\nResourceRecords:\n"));
	for (i = 0; i < total; i++) {
	    int rdlen;
	    int restype;

	    p = FUNC6(ndo, p, "Name=[n1]\n#", maxbuf, 0);
	    if (p == NULL)
		goto out;
	    FUNC4(p);
	    restype = FUNC0(p);
	    p = FUNC6(ndo, p, "ResType=[rw]\nResClass=[rw]\nTTL=[rD]\n", p + 8, 0);
	    if (p == NULL)
		goto out;
	    FUNC4(p);
	    rdlen = FUNC0(p);
	    FUNC1((ndo, "ResourceLength=%d\nResourceData=\n", rdlen));
	    p += 2;
	    if (rdlen == 6) {
		p = FUNC6(ndo, p, "AddrType=[rw]\nAddress=[b.b.b.b]\n", p + rdlen, 0);
		if (p == NULL)
		    goto out;
	    } else {
		if (restype == 0x21) {
		    int numnames;

		    FUNC2(*p);
		    numnames = p[0];
		    p = FUNC6(ndo, p, "NumNames=[B]\n", p + 1, 0);
		    if (p == NULL)
			goto out;
		    while (numnames--) {
			p = FUNC6(ndo, p, "Name=[n2]\t#", maxbuf, 0);
			if (p == NULL)
			    goto out;
			FUNC2(*p);
			if (p[0] & 0x80)
			    FUNC1((ndo, "<GROUP> "));
			switch (p[0] & 0x60) {
			case 0x00: FUNC1((ndo, "B ")); break;
			case 0x20: FUNC1((ndo, "P ")); break;
			case 0x40: FUNC1((ndo, "M ")); break;
			case 0x60: FUNC1((ndo, "_ ")); break;
			}
			if (p[0] & 0x10)
			    FUNC1((ndo, "<DEREGISTERING> "));
			if (p[0] & 0x08)
			    FUNC1((ndo, "<CONFLICT> "));
			if (p[0] & 0x04)
			    FUNC1((ndo, "<ACTIVE> "));
			if (p[0] & 0x02)
			    FUNC1((ndo, "<PERMANENT> "));
			FUNC1((ndo, "\n"));
			p += 2;
		    }
		} else {
		    FUNC7(ndo, p, FUNC5(rdlen, length - (p - data)));
		    p += rdlen;
		}
	    }
	}
    }

    if (p < maxbuf)
	FUNC6(ndo, p, "AdditionalData:\n", maxbuf, 0);

out:
    FUNC1((ndo, "\n"));
    return;
trunc:
    FUNC1((ndo, "%s", tstr));
}