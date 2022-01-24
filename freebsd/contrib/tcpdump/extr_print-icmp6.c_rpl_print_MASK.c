#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct icmp6_hdr {int icmp6_code; } ;
struct TYPE_7__ {int /*<<< orphan*/  ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
#define  ND_RPL_DAG_IO 131 
#define  ND_RPL_DAG_IS 130 
#define  ND_RPL_DAO 129 
#define  ND_RPL_DAO_ACK 128 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(netdissect_options *ndo,
          const struct icmp6_hdr *hdr,
          const u_char *bp, u_int length)
{
        int secured = hdr->icmp6_code & 0x80;
        int basecode= hdr->icmp6_code & 0x7f;

        if(secured) {
                FUNC0((ndo, ", (SEC) [worktodo]"));
                /* XXX
                 * the next header pointer needs to move forward to
                 * skip the secure part.
                 */
                return;
        } else {
                FUNC0((ndo, ", (CLR)"));
        }

        switch(basecode) {
        case ND_RPL_DAG_IS:
                FUNC0((ndo, "DODAG Information Solicitation"));
                if(ndo->ndo_vflag) {
                }
                break;
        case ND_RPL_DAG_IO:
                FUNC0((ndo, "DODAG Information Object"));
                if(ndo->ndo_vflag) {
                        FUNC3(ndo, bp, length);
                }
                break;
        case ND_RPL_DAO:
                FUNC0((ndo, "Destination Advertisement Object"));
                if(ndo->ndo_vflag) {
                        FUNC1(ndo, bp, length);
                }
                break;
        case ND_RPL_DAO_ACK:
                FUNC0((ndo, "Destination Advertisement Object Ack"));
                if(ndo->ndo_vflag) {
                        FUNC2(ndo, bp, length);
                }
                break;
        default:
                FUNC0((ndo, "RPL message, unknown code %u",hdr->icmp6_code));
                break;
        }
	return;

#if 0
trunc:
	ND_PRINT((ndo," [|truncated]"));
	return;
#endif

}