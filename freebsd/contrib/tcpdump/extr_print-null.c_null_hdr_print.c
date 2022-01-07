
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_4__ {int ndo_qflag; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 int bsd_af_values ;
 int tok2str (int ,char*,int ) ;

__attribute__((used)) static inline void
null_hdr_print(netdissect_options *ndo, u_int family, u_int length)
{
 if (!ndo->ndo_qflag) {
  ND_PRINT((ndo, "AF %s (%u)",
   tok2str(bsd_af_values,"Unknown",family),family));
 } else {
  ND_PRINT((ndo, "%s",
   tok2str(bsd_af_values,"Unknown AF %u",family)));
 }

 ND_PRINT((ndo, ", length %u: ", length));
}
