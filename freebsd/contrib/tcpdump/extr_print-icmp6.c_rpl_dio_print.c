
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct rpl_dio_genoption {int dummy; } ;
struct nd_rpl_dio {int rpl_mopprf; int rpl_dagrank; int rpl_instanceid; int rpl_dtsn; int rpl_dagid; } ;
struct TYPE_6__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (int *) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (struct nd_rpl_dio const) ;
 scalar_t__ RPL_DIO_GROUNDED (int ) ;
 int RPL_DIO_MOP (int ) ;
 int RPL_DIO_PRF (int ) ;
 char* ip6addr_string (TYPE_1__*,int ) ;
 int rpl_dio_printopt (TYPE_1__*,struct rpl_dio_genoption const*,int ) ;
 int rpl_mop_values ;
 int tok2str (int ,char*,int ) ;

__attribute__((used)) static void
rpl_dio_print(netdissect_options *ndo,
              const u_char *bp, u_int length)
{
        const struct nd_rpl_dio *dio = (const struct nd_rpl_dio *)bp;
        const char *dagid_str;

        ND_TCHECK(*dio);
        dagid_str = ip6addr_string (ndo, dio->rpl_dagid);

        ND_PRINT((ndo, " [dagid:%s,seq:%u,instance:%u,rank:%u,%smop:%s,prf:%u]",
                  dagid_str,
                  dio->rpl_dtsn,
                  dio->rpl_instanceid,
                  EXTRACT_16BITS(&dio->rpl_dagrank),
                  RPL_DIO_GROUNDED(dio->rpl_mopprf) ? "grounded,":"",
                  tok2str(rpl_mop_values, "mop%u", RPL_DIO_MOP(dio->rpl_mopprf)),
                  RPL_DIO_PRF(dio->rpl_mopprf)));

        if(ndo->ndo_vflag > 1) {
                const struct rpl_dio_genoption *opt = (const struct rpl_dio_genoption *)&dio[1];
                rpl_dio_printopt(ndo, opt, length);
        }
 return;
trunc:
 ND_PRINT((ndo," [|truncated]"));
 return;
}
