
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef scalar_t__ u_char ;
struct TYPE_6__ {int ndo_vflag; scalar_t__ ndo_Xflag; } ;
typedef TYPE_1__ netdissect_options ;


 scalar_t__ const IAC ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (scalar_t__ const) ;
 int hex_print_with_offset (TYPE_1__*,char*,scalar_t__ const*,int,int) ;
 int telnet_parse (TYPE_1__*,scalar_t__ const*,scalar_t__,int) ;
 int tstr ;

void
telnet_print(netdissect_options *ndo, const u_char *sp, u_int length)
{
 int first = 1;
 const u_char *osp;
 int l;

 osp = sp;

 ND_TCHECK(*sp);
 while (length > 0 && *sp == IAC) {




  l = telnet_parse(ndo, sp, length, 0);
  if (l < 0)
   break;




  if (ndo->ndo_Xflag && 2 < ndo->ndo_vflag) {
   if (first)
    ND_PRINT((ndo, "\nTelnet:"));
   hex_print_with_offset(ndo, "\n", sp, l, sp - osp);
   if (l > 8)
    ND_PRINT((ndo, "\n\t\t\t\t"));
   else
    ND_PRINT((ndo, "%*s\t", (8 - l) * 3, ""));
  } else
   ND_PRINT((ndo, "%s", (first) ? " [telnet " : ", "));

  (void)telnet_parse(ndo, sp, length, 1);
  first = 0;

  sp += l;
  length -= l;
  ND_TCHECK(*sp);
 }
 if (!first) {
  if (ndo->ndo_Xflag && 2 < ndo->ndo_vflag)
   ND_PRINT((ndo, "\n"));
  else
   ND_PRINT((ndo, "]"));
 }
 return;
trunc:
 ND_PRINT((ndo, "%s", tstr));
}
