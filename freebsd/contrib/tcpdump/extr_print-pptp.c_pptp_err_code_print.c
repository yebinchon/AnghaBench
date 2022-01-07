
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {scalar_t__ ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 int pptp_errcode_str ;
 int tok2str (int ,char*,int const) ;

__attribute__((used)) static void
pptp_err_code_print(netdissect_options *ndo,
                    const uint8_t *err_code)
{
 ND_PRINT((ndo, " ERR_CODE(%u", *err_code));
 if (ndo->ndo_vflag) {
  ND_PRINT((ndo, ":%s", tok2str(pptp_errcode_str, "?", *err_code)));
 }
 ND_PRINT((ndo, ")"));
}
