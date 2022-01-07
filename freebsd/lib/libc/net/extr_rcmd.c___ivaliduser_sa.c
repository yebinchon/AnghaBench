
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int hname ;
typedef int buf ;
typedef int FILE ;


 int EOF ;
 int MAXHOSTNAMELEN ;
 int NI_NAMEREQD ;
 int __icheckhost (struct sockaddr const*,int ,char*) ;
 scalar_t__ fgets (char*,int,int *) ;
 int getc (int *) ;
 scalar_t__ getnameinfo (struct sockaddr const*,int ,char*,int,int *,int ,int ) ;
 int innetgr (char*,char*,char const*,char*) ;
 scalar_t__ isupper (unsigned char) ;
 int * strchr (char*,char) ;
 int strcmp (char const*,char*) ;
 char tolower (unsigned char) ;
 scalar_t__ yp_get_default_domain (char**) ;

int
__ivaliduser_sa(FILE *hostf, const struct sockaddr *raddr, socklen_t salen,
    const char *luser, const char *ruser)
{
 char *user, *p;
 int ch;
 char buf[MAXHOSTNAMELEN + 128];
 char hname[MAXHOSTNAMELEN];

 int userok = 0, hostok = 0;
 if (getnameinfo(raddr, salen, hname, sizeof(hname), ((void*)0), 0,
   NI_NAMEREQD) != 0)
  hname[0] = '\0';

 while (fgets(buf, sizeof(buf), hostf)) {
  p = buf;

  if (strchr(p, '\n') == ((void*)0)) {
   while ((ch = getc(hostf)) != '\n' && ch != EOF);
   continue;
  }
  if (*p == '\n' || *p == '#') {

   continue;
  }
  while (*p != '\n' && *p != ' ' && *p != '\t' && *p != '\0') {
   *p = isupper((unsigned char)*p) ? tolower((unsigned char)*p) : *p;
   p++;
  }
  if (*p == ' ' || *p == '\t') {
   *p++ = '\0';
   while (*p == ' ' || *p == '\t')
    p++;
   user = p;
   while (*p != '\n' && *p != ' ' &&
       *p != '\t' && *p != '\0')
    p++;
  } else
   user = p;
  *p = '\0';




  switch(buf[0]) {
  case '+':
   if (!buf[1]) {
    hostok = 1;
    break;
   }
   if (buf[1] == '@')
    hostok = hname[0] != '\0' &&
        innetgr(&buf[2], hname, ((void*)0), ((void*)0));
   else
    hostok = __icheckhost(raddr, salen,
            (char *)&buf[1]);
   break;
  case '-':
   if (buf[1] == '@') {
    if (hname[0] == '\0' ||
        innetgr(&buf[2], hname, ((void*)0), ((void*)0)))
     return(-1);
   } else {
    if (__icheckhost(raddr, salen,
       (char *)&buf[1]))
     return(-1);
   }
   break;
  default:
   hostok = __icheckhost(raddr, salen, buf);
   break;
  }
  switch(*user) {
  case '+':
   if (!*(user+1)) {
    userok = 1;
    break;
   }
   if (*(user+1) == '@')
    userok = innetgr(user+2, ((void*)0), ruser, ((void*)0));
   else
    userok = !(strcmp(ruser, user+1));
   break;
  case '-':
   if (hostok) {
    if (!*(user+1))
     return(-1);
    if (*(user+1) == '@') {
     if (innetgr(user+2, ((void*)0),
       ruser, ((void*)0)))
      return(-1);
    } else {
     if (!strcmp(ruser, user+1))
      return(-1);
    }
   }
   break;
  default:
   if (hostok)
    userok = !(strcmp(ruser,*user ? user : luser));
   break;
  }
  if (hostok && userok)
   return(0);
 }
 return (-1);
}
