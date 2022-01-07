
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;




 int FETCH (int,int const*,int) ;
 int IAC ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (int const) ;
 int ND_TCHECK2 (int const,int) ;
 int NTELOPTS ;

 int const SE ;
 int STR_OR_ID (int,int ) ;
 int TELCMD_FIRST ;




 int authcmd ;
 int authtype ;
 int cmds ;
 int enccmd ;
 int enctype ;
 int * telcmds ;
 int * telopts ;
 int tstr ;

__attribute__((used)) static int
telnet_parse(netdissect_options *ndo, const u_char *sp, u_int length, int print)
{
 int i, x;
 u_int c;
 const u_char *osp, *p;
 osp = sp;

 do { if (length < 1) goto pktend; ND_TCHECK(*sp); c = *sp++; length--; } while (0);
 if (c != IAC)
  goto pktend;
 do { if (length < 1) goto pktend; ND_TCHECK(*sp); c = *sp++; length--; } while (0);
 if (c == IAC) {
  if (print)
   ND_PRINT((ndo, "IAC IAC"));
  goto done;
 }

 i = c - TELCMD_FIRST;
 if (i < 0 || i > IAC - TELCMD_FIRST)
  goto pktend;

 switch (c) {
 case 133:
 case 134:
 case 128:
 case 129:
 case 132:

  do { if (length < 1) goto pktend; ND_TCHECK(*sp); x = *sp++; length--; } while (0);
  if (x >= 0 && x < NTELOPTS) {
   if (print)
    ND_PRINT((ndo, "%s %s", telcmds[i], telopts[x]));
  } else {
   if (print)
    ND_PRINT((ndo, "%s %#x", telcmds[i], x));
  }
  if (c != 132)
   break;

  p = sp;
  while (length > (u_int)(p + 1 - sp)) {
   ND_TCHECK2(*p, 2);
   if (p[0] == IAC && p[1] == SE)
    break;
   p++;
  }
  ND_TCHECK(*p);
  if (*p != IAC)
   goto pktend;

  switch (x) {
  case 131:
   if (p <= sp)
    break;
   do { if (length < 1) goto pktend; ND_TCHECK(*sp); c = *sp++; length--; } while (0);
   if (print)
    ND_PRINT((ndo, " %s", STR_OR_ID(c, authcmd)));
   if (p <= sp)
    break;
   do { if (length < 1) goto pktend; ND_TCHECK(*sp); c = *sp++; length--; } while (0);
   if (print)
    ND_PRINT((ndo, " %s", STR_OR_ID(c, authtype)));
   break;
  case 130:
   if (p <= sp)
    break;
   do { if (length < 1) goto pktend; ND_TCHECK(*sp); c = *sp++; length--; } while (0);
   if (print)
    ND_PRINT((ndo, " %s", STR_OR_ID(c, enccmd)));
   if (p <= sp)
    break;
   do { if (length < 1) goto pktend; ND_TCHECK(*sp); c = *sp++; length--; } while (0);
   if (print)
    ND_PRINT((ndo, " %s", STR_OR_ID(c, enctype)));
   break;
  default:
   if (p <= sp)
    break;
   do { if (length < 1) goto pktend; ND_TCHECK(*sp); c = *sp++; length--; } while (0);
   if (print)
    ND_PRINT((ndo, " %s", STR_OR_ID(c, cmds)));
   break;
  }
  while (p > sp) {
   do { if (length < 1) goto pktend; ND_TCHECK(*sp); x = *sp++; length--; } while (0);
   if (print)
    ND_PRINT((ndo, " %#x", x));
  }

  if (print)
   ND_PRINT((ndo, " SE"));
  sp += 2;
  break;
 default:
  if (print)
   ND_PRINT((ndo, "%s", telcmds[i]));
  goto done;
 }

done:
 return sp - osp;

trunc:
 ND_PRINT((ndo, "%s", tstr));
pktend:
 return -1;

}
