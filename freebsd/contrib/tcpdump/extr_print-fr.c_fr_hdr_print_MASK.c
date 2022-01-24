#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_4__ {scalar_t__ ndo_qflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ethertype_values ; 
 int /*<<< orphan*/  fr_header_flag_values ; 
 int /*<<< orphan*/  nlpid_values ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC4(netdissect_options *ndo,
             int length, u_int addr_len, u_int dlci, uint8_t *flags, uint16_t nlpid)
{
    if (ndo->ndo_qflag) {
        FUNC1((ndo, "Q.922, DLCI %u, length %u: ",
                     dlci,
                     length));
    } else {
        if (nlpid <= 0xff) /* if its smaller than 256 then its a NLPID */
            FUNC1((ndo, "Q.922, hdr-len %u, DLCI %u, Flags [%s], NLPID %s (0x%02x), length %u: ",
                         addr_len,
                         dlci,
                         FUNC2(fr_header_flag_values, "none", FUNC0(flags)),
                         FUNC3(nlpid_values,"unknown", nlpid),
                         nlpid,
                         length));
        else /* must be an ethertype */
            FUNC1((ndo, "Q.922, hdr-len %u, DLCI %u, Flags [%s], cisco-ethertype %s (0x%04x), length %u: ",
                         addr_len,
                         dlci,
                         FUNC2(fr_header_flag_values, "none", FUNC0(flags)),
                         FUNC3(ethertype_values, "unknown", nlpid),
                         nlpid,
                         length));
    }
}