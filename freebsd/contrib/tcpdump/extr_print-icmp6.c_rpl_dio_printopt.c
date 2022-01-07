
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ u_int ;
typedef int u_char ;
struct rpl_dio_genoption {int rpl_dio_len; scalar_t__ rpl_dio_type; } ;
struct TYPE_5__ {int ndo_vflag; int const* ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (int) ;
 scalar_t__ ND_TTEST2 (struct rpl_dio_genoption const,int) ;
 scalar_t__ RPL_DIO_GENOPTION_LEN ;
 scalar_t__ RPL_OPT_PAD0 ;
 int hex_print (TYPE_1__*,char*,int const*,unsigned int) ;
 int rpl_subopt_values ;
 int tok2str (int ,char*,scalar_t__) ;

__attribute__((used)) static void
rpl_dio_printopt(netdissect_options *ndo,
                 const struct rpl_dio_genoption *opt,
                 u_int length)
{
        if(length < RPL_DIO_GENOPTION_LEN) return;
        length -= RPL_DIO_GENOPTION_LEN;

        ND_TCHECK(opt->rpl_dio_len);

        while((opt->rpl_dio_type == RPL_OPT_PAD0 &&
               (const u_char *)opt < ndo->ndo_snapend) ||
              ND_TTEST2(*opt,(opt->rpl_dio_len+2))) {

                unsigned int optlen = opt->rpl_dio_len+2;
                if(opt->rpl_dio_type == RPL_OPT_PAD0) {
                        optlen = 1;
                        ND_PRINT((ndo, " opt:pad0"));
                } else {
                        ND_PRINT((ndo, " opt:%s len:%u ",
                                  tok2str(rpl_subopt_values, "subopt:%u", opt->rpl_dio_type),
                                  optlen));
                        if(ndo->ndo_vflag > 2) {
                                unsigned int paylen = opt->rpl_dio_len;
                                if(paylen > length) paylen = length;
                                hex_print(ndo,
                                          " ",
                                          ((const uint8_t *)opt) + RPL_DIO_GENOPTION_LEN,
                                          paylen);
                        }
                }
                opt = (const struct rpl_dio_genoption *)(((const char *)opt) + optlen);
                length -= optlen;
        }
        return;
trunc:
 ND_PRINT((ndo," [|truncated]"));
 return;
}
