
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct icmp6_hdr {int icmp6_code; } ;
struct TYPE_7__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;




 int rpl_dao_print (TYPE_1__*,int const*,int ) ;
 int rpl_daoack_print (TYPE_1__*,int const*,int ) ;
 int rpl_dio_print (TYPE_1__*,int const*,int ) ;

__attribute__((used)) static void
rpl_print(netdissect_options *ndo,
          const struct icmp6_hdr *hdr,
          const u_char *bp, u_int length)
{
        int secured = hdr->icmp6_code & 0x80;
        int basecode= hdr->icmp6_code & 0x7f;

        if(secured) {
                ND_PRINT((ndo, ", (SEC) [worktodo]"));




                return;
        } else {
                ND_PRINT((ndo, ", (CLR)"));
        }

        switch(basecode) {
        case 130:
                ND_PRINT((ndo, "DODAG Information Solicitation"));
                if(ndo->ndo_vflag) {
                }
                break;
        case 131:
                ND_PRINT((ndo, "DODAG Information Object"));
                if(ndo->ndo_vflag) {
                        rpl_dio_print(ndo, bp, length);
                }
                break;
        case 129:
                ND_PRINT((ndo, "Destination Advertisement Object"));
                if(ndo->ndo_vflag) {
                        rpl_dao_print(ndo, bp, length);
                }
                break;
        case 128:
                ND_PRINT((ndo, "Destination Advertisement Object Ack"));
                if(ndo->ndo_vflag) {
                        rpl_daoack_print(ndo, bp, length);
                }
                break;
        default:
                ND_PRINT((ndo, "RPL message, unknown code %u",hdr->icmp6_code));
                break;
        }
 return;







}
