
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_short ;
typedef int u_char ;
struct hnamemem {int addr; char const* name; struct hnamemem* nxt; } ;
struct TYPE_7__ {int (* ndo_error ) (TYPE_1__*,char*) ;int ndo_nflag; } ;
typedef TYPE_1__ netdissect_options ;
typedef int nambuf ;
typedef int line ;
typedef int FILE ;


 int HASHNAMESIZE ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 struct hnamemem* hnametable ;
 void* newhnamemem (TYPE_1__*) ;
 int snprintf (char*,int,char*,...) ;
 int sscanf (char*,char*,int*,...) ;
 void* strdup (char*) ;
 int stub1 (TYPE_1__*,char*) ;
 int stub2 (TYPE_1__*,char*) ;
 int stub3 (TYPE_1__*,char*) ;

__attribute__((used)) static const char *
ataddr_string(netdissect_options *ndo,
              u_short atnet, u_char athost)
{
 register struct hnamemem *tp, *tp2;
 register int i = (atnet << 8) | athost;
 char nambuf[256+1];
 static int first = 1;
 FILE *fp;





 if (first && (first = 0, !ndo->ndo_nflag)
     && (fp = fopen("/etc/atalk.names", "r"))) {
  char line[256];
  int i1, i2;

  while (fgets(line, sizeof(line), fp)) {
   if (line[0] == '\n' || line[0] == 0 || line[0] == '#')
    continue;
   if (sscanf(line, "%d.%d %256s", &i1, &i2, nambuf) == 3)

    i2 |= (i1 << 8);
   else if (sscanf(line, "%d %256s", &i1, nambuf) == 2)

    i2 = (i1 << 8) | 255;
   else
    continue;

   for (tp = &hnametable[i2 & (HASHNAMESIZE-1)];
        tp->nxt; tp = tp->nxt)
    ;
   tp->addr = i2;
   tp->nxt = newhnamemem(ndo);
   tp->name = strdup(nambuf);
   if (tp->name == ((void*)0))
    (*ndo->ndo_error)(ndo,
        "ataddr_string: strdup(nambuf)");
  }
  fclose(fp);
 }

 for (tp = &hnametable[i & (HASHNAMESIZE-1)]; tp->nxt; tp = tp->nxt)
  if (tp->addr == i)
   return (tp->name);


 i |= 255;
 for (tp2 = &hnametable[i & (HASHNAMESIZE-1)]; tp2->nxt; tp2 = tp2->nxt)
  if (tp2->addr == i) {
   tp->addr = (atnet << 8) | athost;
   tp->nxt = newhnamemem(ndo);
   (void)snprintf(nambuf, sizeof(nambuf), "%s.%d",
       tp2->name, athost);
   tp->name = strdup(nambuf);
   if (tp->name == ((void*)0))
    (*ndo->ndo_error)(ndo,
        "ataddr_string: strdup(nambuf)");
   return (tp->name);
  }

 tp->addr = (atnet << 8) | athost;
 tp->nxt = newhnamemem(ndo);
 if (athost != 255)
  (void)snprintf(nambuf, sizeof(nambuf), "%d.%d", atnet, athost);
 else
  (void)snprintf(nambuf, sizeof(nambuf), "%d", atnet);
 tp->name = strdup(nambuf);
 if (tp->name == ((void*)0))
  (*ndo->ndo_error)(ndo, "ataddr_string: strdup(nambuf)");

 return (tp->name);
}
