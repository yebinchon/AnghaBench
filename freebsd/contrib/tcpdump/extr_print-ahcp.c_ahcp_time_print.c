
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int time_t ;
struct tm {int dummy; } ;
typedef int netdissect_options ;
typedef int buf ;


 int BUFSIZE ;
 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 struct tm* gmtime (int *) ;
 int istr ;
 scalar_t__ strftime (char*,int,char*,struct tm*) ;
 int tstr ;

__attribute__((used)) static int
ahcp_time_print(netdissect_options *ndo, const u_char *cp, const u_char *ep)
{
 time_t t;
 struct tm *tm;
 char buf[BUFSIZE];

 if (cp + 4 != ep)
  goto invalid;
 ND_TCHECK2(*cp, 4);
 t = EXTRACT_32BITS(cp);
 if (((void*)0) == (tm = gmtime(&t)))
  ND_PRINT((ndo, ": gmtime() error"));
 else if (0 == strftime(buf, sizeof(buf), "%Y-%m-%d %H:%M:%S", tm))
  ND_PRINT((ndo, ": strftime() error"));
 else
  ND_PRINT((ndo, ": %s UTC", buf));
 return 0;

invalid:
 ND_PRINT((ndo, "%s", istr));
 ND_TCHECK2(*cp, ep - cp);
 return 0;
trunc:
 ND_PRINT((ndo, "%s", tstr));
 return -1;
}
