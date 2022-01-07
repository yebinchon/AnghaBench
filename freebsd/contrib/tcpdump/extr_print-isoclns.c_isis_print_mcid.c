
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct isis_spb_mcid {int * digest; int revision_lvl; int name; int format_id; } ;
struct TYPE_5__ {int ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (int ) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (struct isis_spb_mcid const) ;
 scalar_t__ fn_printzp (TYPE_1__*,int ,int,int ) ;
 int tstr ;

__attribute__((used)) static void
isis_print_mcid(netdissect_options *ndo,
                const struct isis_spb_mcid *mcid)
{
  int i;

  ND_TCHECK(*mcid);
  ND_PRINT((ndo, "ID: %d, Name: ", mcid->format_id));

  if (fn_printzp(ndo, mcid->name, 32, ndo->ndo_snapend))
    goto trunc;

  ND_PRINT((ndo, "\n\t              Lvl: %d", EXTRACT_16BITS(mcid->revision_lvl)));

  ND_PRINT((ndo, ", Digest: "));

  for(i=0;i<16;i++)
    ND_PRINT((ndo, "%.2x ", mcid->digest[i]));

trunc:
  ND_PRINT((ndo, "%s", tstr));
}
