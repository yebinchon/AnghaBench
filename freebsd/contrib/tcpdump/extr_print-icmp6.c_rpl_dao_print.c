
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
struct rpl_dio_genoption {int dummy; } ;
struct nd_rpl_dao {int rpl_flags; int rpl_instanceid; int rpl_daoseq; int rpl_dagid; } ;
struct TYPE_6__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 scalar_t__ DAGID_LEN ;
 int ND_PRINT (TYPE_1__*) ;
 scalar_t__ ND_RPL_DAO_MIN_LEN ;
 int ND_TCHECK (struct nd_rpl_dao const) ;
 int ND_TCHECK2 (int ,scalar_t__) ;
 scalar_t__ RPL_DAO_D (int ) ;
 scalar_t__ RPL_DAO_K (int ) ;
 char* ip6addr_string (TYPE_1__*,int ) ;
 int rpl_dio_printopt (TYPE_1__*,struct rpl_dio_genoption const*,scalar_t__) ;

__attribute__((used)) static void
rpl_dao_print(netdissect_options *ndo,
              const u_char *bp, u_int length)
{
        const struct nd_rpl_dao *dao = (const struct nd_rpl_dao *)bp;
        const char *dagid_str = "<elided>";

        ND_TCHECK(*dao);
        if (length < ND_RPL_DAO_MIN_LEN)
         goto tooshort;

        bp += ND_RPL_DAO_MIN_LEN;
        length -= ND_RPL_DAO_MIN_LEN;
        if(RPL_DAO_D(dao->rpl_flags)) {
                ND_TCHECK2(dao->rpl_dagid, DAGID_LEN);
                if (length < DAGID_LEN)
                 goto tooshort;
                dagid_str = ip6addr_string (ndo, dao->rpl_dagid);
                bp += DAGID_LEN;
                length -= DAGID_LEN;
        }

        ND_PRINT((ndo, " [dagid:%s,seq:%u,instance:%u%s%s,%02x]",
                  dagid_str,
                  dao->rpl_daoseq,
                  dao->rpl_instanceid,
                  RPL_DAO_K(dao->rpl_flags) ? ",acK":"",
                  RPL_DAO_D(dao->rpl_flags) ? ",Dagid":"",
                  dao->rpl_flags));

        if(ndo->ndo_vflag > 1) {
                const struct rpl_dio_genoption *opt = (const struct rpl_dio_genoption *)bp;
                rpl_dio_printopt(ndo, opt, length);
        }
 return;

trunc:
 ND_PRINT((ndo," [|truncated]"));
 return;

tooshort:
 ND_PRINT((ndo," [|length too short]"));
 return;
}
