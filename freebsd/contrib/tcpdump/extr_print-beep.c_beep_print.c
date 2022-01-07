
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 scalar_t__ l_strnstart (int *,char*,int,char const*,int ) ;

void
beep_print(netdissect_options *ndo, const u_char *bp, u_int length)
{

 if (l_strnstart(ndo, "MSG", 4, (const char *)bp, length))
  ND_PRINT((ndo, " BEEP MSG"));
 else if (l_strnstart(ndo, "RPY ", 4, (const char *)bp, length))
  ND_PRINT((ndo, " BEEP RPY"));
 else if (l_strnstart(ndo, "ERR ", 4, (const char *)bp, length))
  ND_PRINT((ndo, " BEEP ERR"));
 else if (l_strnstart(ndo, "ANS ", 4, (const char *)bp, length))
  ND_PRINT((ndo, " BEEP ANS"));
 else if (l_strnstart(ndo, "NUL ", 4, (const char *)bp, length))
  ND_PRINT((ndo, " BEEP NUL"));
 else if (l_strnstart(ndo, "SEQ ", 4, (const char *)bp, length))
  ND_PRINT((ndo, " BEEP SEQ"));
 else if (l_strnstart(ndo, "END", 4, (const char *)bp, length))
  ND_PRINT((ndo, " BEEP END"));
 else
  ND_PRINT((ndo, " BEEP (payload or undecoded)"));
}
