
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int8_t ;
struct TYPE_5__ {struct TYPE_5__* next; int ** files; } ;
typedef int FILE ;
typedef TYPE_1__ CLIENT ;


 scalar_t__ BootAny ;
 int ** BootFiles ;
 int C_LINELEN ;
 int C_MAXFILE ;
 TYPE_1__* Clients ;
 int ConfigFile ;
 int FreeClient (TYPE_1__*) ;
 int FreeClients () ;
 int GETSTR ;
 int LOG_ERR ;
 TYPE_1__* NewClient (int *) ;
 int * ParseAddr (char*) ;
 int SIGHUP ;
 scalar_t__ STREQN (int *,char*) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (int ,char*) ;
 int sigblock (int ) ;
 int sigmask (int ) ;
 int sigsetmask (int) ;
 char* strchr (char*,char) ;
 int syslog (int ,char*,int,...) ;

int
ParseConfig(void)
{
 FILE *fp;
 CLIENT *client;
 u_int8_t *addr;
 char line[C_LINELEN];
 char *cp, *bcp;
 int i, j;
 int omask, linecnt = 0;

 if (BootAny)
  return(1);

 FreeClients();

 if ((fp = fopen(ConfigFile, "r")) == ((void*)0)) {
  syslog(LOG_ERR, "ParseConfig: can't open config file (%s)",
         ConfigFile);
  return(0);
 }
 omask = sigblock(sigmask(SIGHUP));
 while (fgets(line, C_LINELEN, fp) != ((void*)0)) {
  linecnt++;

  if (*line == '\0' || *line == '#')
   continue;

  if ((cp = strchr(line,'#')) != ((void*)0))
   *cp = '\0';

  cp = line;
  while (isspace(*cp) || *cp == ',') cp++; bcp = cp; while (*cp && *cp!=',' && !isspace(*cp)) cp++; if (*cp) *cp++ = '\0';
  if (bcp == cp)
   continue;




  if ((addr = ParseAddr(bcp)) == ((void*)0)) {
   syslog(LOG_ERR,
          "ParseConfig: line %d: can't parse <%s>",
          linecnt, bcp);
   continue;
  }

  if ((client = NewClient(addr)) == ((void*)0))
   continue;

  while (isspace(*cp) || *cp == ',') cp++; bcp = cp; while (*cp && *cp!=',' && !isspace(*cp)) cp++; if (*cp) *cp++ = '\0';






  i = 0;
  if (bcp == cp)
   for (; i < C_MAXFILE && BootFiles[i] != ((void*)0); i++)
    client->files[i] = BootFiles[i];
  else {
   do {





    for (j = 0; ; j++) {
     if (j==C_MAXFILE||BootFiles[j]==((void*)0)) {
      syslog(LOG_ERR, "ParseConfig: line %d: no boot file (%s)",
             linecnt, bcp);
      break;
     }
     if (STREQN(BootFiles[j], bcp)) {
      if (i < C_MAXFILE)
       client->files[i++] =
           BootFiles[j];
      else
       syslog(LOG_ERR, "ParseConfig: line %d: too many boot files (%s)",
              linecnt, bcp);
      break;
     }
    }
    while (isspace(*cp) || *cp == ',') cp++; bcp = cp; while (*cp && *cp!=',' && !isspace(*cp)) cp++; if (*cp) *cp++ = '\0';
   } while (bcp != cp);







   if (i == 0) {
    FreeClient(client);
    continue;
   }
  }





  if (Clients)
   client->next = Clients;
  Clients = client;
 }

 (void) fclose(fp);

 (void) sigsetmask(omask);

 return(1);
}
