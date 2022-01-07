
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_int ;
typedef int u_char ;
struct atNBP {int dummy; } ;
struct atATP {int dummy; } ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int atp_print (int *,struct atATP const*,int ) ;



 int eigrp_print (int *,int const*,int ) ;
 int nbp_print (int *,struct atNBP const*,int ,int ,int ,int ) ;
 int tok2str (int ,int *,int) ;
 int type2str ;

__attribute__((used)) static void
ddp_print(netdissect_options *ndo,
          register const u_char *bp, register u_int length, register int t,
          register u_short snet, register u_char snode, u_char skt)
{

 switch (t) {

 case 128:
  nbp_print(ndo, (const struct atNBP *)bp, length, snet, snode, skt);
  break;

 case 130:
  atp_print(ndo, (const struct atATP *)bp, length);
  break;

 case 129:
  eigrp_print(ndo, bp, length);
  break;

 default:
  ND_PRINT((ndo, " at-%s %d", tok2str(type2str, ((void*)0), t), length));
  break;
 }
}
