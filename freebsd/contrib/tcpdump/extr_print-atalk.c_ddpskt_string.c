
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ndo_nflag; } ;
typedef TYPE_1__ netdissect_options ;
typedef int buf ;


 int skt2str ;
 int snprintf (char*,int,char*,int) ;
 char const* tok2str (int ,char*,int) ;

__attribute__((used)) static const char *
ddpskt_string(netdissect_options *ndo,
              register int skt)
{
 static char buf[8];

 if (ndo->ndo_nflag) {
  (void)snprintf(buf, sizeof(buf), "%d", skt);
  return (buf);
 }
 return (tok2str(skt2str, "%d", skt));
}
