
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct hostinfo {int n; scalar_t__* addrs; void* name; } ;
struct hostent {scalar_t__ h_addrtype; int h_length; char* h_name; char** h_addr_list; } ;
typedef int int32_t ;


 scalar_t__ AF_INET ;
 int Fprintf (int ,char*,int ,char*) ;
 scalar_t__ MAXHOSTNAMELEN ;
 void* calloc (int,int) ;
 struct hostent* cap_gethostbyname (int *,char*) ;
 int * capdns ;
 int errno ;
 int exit (int) ;
 struct hostent* gethostbyname (char*) ;
 scalar_t__ inet_addr (char*) ;
 int memcpy (scalar_t__*,char*,int) ;
 int prog ;
 int stderr ;
 void* strdup (char*) ;
 char* strerror (int ) ;
 scalar_t__ strlen (char*) ;

struct hostinfo *
gethostinfo(register char *hostname)
{
 register int n;
 register struct hostent *hp;
 register struct hostinfo *hi;
 register char **p;
 register u_int32_t addr, *ap;

 if (strlen(hostname) >= MAXHOSTNAMELEN) {
  Fprintf(stderr, "%s: hostname \"%.32s...\" is too long\n",
      prog, hostname);
  exit(1);
 }
 hi = calloc(1, sizeof(*hi));
 if (hi == ((void*)0)) {
  Fprintf(stderr, "%s: calloc %s\n", prog, strerror(errno));
  exit(1);
 }
 addr = inet_addr(hostname);
 if ((int32_t)addr != -1) {
  hi->name = strdup(hostname);
  hi->n = 1;
  hi->addrs = calloc(1, sizeof(hi->addrs[0]));
  if (hi->addrs == ((void*)0)) {
   Fprintf(stderr, "%s: calloc %s\n",
       prog, strerror(errno));
   exit(1);
  }
  hi->addrs[0] = addr;
  return (hi);
 }






  hp = gethostbyname(hostname);
 if (hp == ((void*)0)) {
  Fprintf(stderr, "%s: unknown host %s\n", prog, hostname);
  exit(1);
 }
 if (hp->h_addrtype != AF_INET || hp->h_length != 4) {
  Fprintf(stderr, "%s: bad host %s\n", prog, hostname);
  exit(1);
 }
 hi->name = strdup(hp->h_name);
 for (n = 0, p = hp->h_addr_list; *p != ((void*)0); ++n, ++p)
  continue;
 hi->n = n;
 hi->addrs = calloc(n, sizeof(hi->addrs[0]));
 if (hi->addrs == ((void*)0)) {
  Fprintf(stderr, "%s: calloc %s\n", prog, strerror(errno));
  exit(1);
 }
 for (ap = hi->addrs, p = hp->h_addr_list; *p != ((void*)0); ++ap, ++p)
  memcpy(ap, *p, sizeof(*ap));
 return (hi);
}
