
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct servent {char* s_name; int s_proto; int s_port; } ;
struct hnamemem {int addr; struct hnamemem* nxt; int * name; } ;
struct TYPE_5__ {int (* ndo_error ) (TYPE_1__*,char*) ;scalar_t__ ndo_nflag; } ;
typedef TYPE_1__ netdissect_options ;
typedef int buf ;


 int HASHNAMESIZE ;
 int endservent () ;
 struct servent* getservent () ;
 struct hnamemem* newhnamemem (TYPE_1__*) ;
 int ntohs (int ) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ strcmp (int ,char*) ;
 void* strdup (char*) ;
 int stub1 (TYPE_1__*,char*) ;
 struct hnamemem* tporttable ;
 struct hnamemem* uporttable ;

__attribute__((used)) static void
init_servarray(netdissect_options *ndo)
{
 struct servent *sv;
 register struct hnamemem *table;
 register int i;
 char buf[sizeof("0000000000")];

 while ((sv = getservent()) != ((void*)0)) {
  int port = ntohs(sv->s_port);
  i = port & (HASHNAMESIZE-1);
  if (strcmp(sv->s_proto, "tcp") == 0)
   table = &tporttable[i];
  else if (strcmp(sv->s_proto, "udp") == 0)
   table = &uporttable[i];
  else
   continue;

  while (table->name)
   table = table->nxt;
  if (ndo->ndo_nflag) {
   (void)snprintf(buf, sizeof(buf), "%d", port);
   table->name = strdup(buf);
  } else
   table->name = strdup(sv->s_name);
  if (table->name == ((void*)0))
   (*ndo->ndo_error)(ndo, "init_servarray: strdup");

  table->addr = port;
  table->nxt = newhnamemem(ndo);
 }
 endservent();
}
