
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct hostent {int h_name; } ;
typedef int hname ;
typedef int buf ;
typedef int FILE ;


 int AF_INET ;
 int EOF ;
 int MaxHostNameLen ;
 int __icheckhost (unsigned int,char*) ;
 scalar_t__ fgets (char*,int,int *) ;
 int getc (int *) ;
 struct hostent* gethostbyaddr (char*,int,int ) ;
 int innetgr (char*,char*,char*,char*) ;
 scalar_t__ isupper (unsigned char) ;
 int * strchr (char*,char) ;
 int strcmp (char const*,char*) ;
 int strlcpy (char*,int ,int) ;
 char tolower (unsigned char) ;
 scalar_t__ yp_get_default_domain (char**) ;

__attribute__((used)) static
int
__ivaliduser(FILE *hostf, unsigned raddr, const char *luser,
      const char *ruser)
{
 char *user, *p;
 int ch;
 char buf[MaxHostNameLen + 128];
 char hname[MaxHostNameLen];
 struct hostent *hp;

 int userok = 0, hostok = 0;
 if ((hp = gethostbyaddr((char *)&raddr,
    sizeof(u_long),
    AF_INET)) == ((void*)0))
  return (-1);
 strlcpy(hname, hp->h_name, sizeof(hname));

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
          if (isupper((unsigned char)*p))
       *p = tolower((unsigned char)*p);
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
    hostok = innetgr((char *)&buf[2],
     (char *)&hname, ((void*)0), ((void*)0));
   else
    hostok = __icheckhost(raddr,(char *)&buf[1]);
   break;
  case '-':
   if (buf[1] == '@') {
    if (innetgr((char *)&buf[2],
           (char *)&hname, ((void*)0), ((void*)0)))
     return(-1);
   } else {
    if (__icheckhost(raddr,(char *)&buf[1]))
     return(-1);
   }
   break;
  default:
   hostok = __icheckhost(raddr, buf);
   break;
  }
  switch(*user) {
  case '+':
   if (!*(user+1)) {
    userok = 1;
    break;
   }
   if (*(user+1) == '@')
    userok = innetgr(user+2, ((void*)0), (char *)ruser,
       ((void*)0));
   else
    userok = !(strcmp(ruser, user+1));
   break;
  case '-':
   if (hostok) {
    if (!*(user+1))
     return(-1);
    if (*(user+1) == '@') {
     if (innetgr(user+2, ((void*)0),
          (char *)ruser, ((void*)0)))
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
