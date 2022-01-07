
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {int s_name; } ;
struct protoent {char* p_name; } ;
typedef int buf ;


 int OPT_NORESOLVE ;
 struct protoent* getprotobynumber (int) ;
 struct servent* getservbyport (int ,char*) ;
 int htons (int) ;
 int opts ;
 int sprintf (char*,char*,int) ;
 int strlen (char*) ;
 scalar_t__ strncasecmp (char*,int ,int ) ;
 int strncpy (char*,int ,int) ;

char *
portname(int pr, int port)
{
 static char buf[32];
 struct protoent *p = ((void*)0);
 struct servent *sv = ((void*)0);
 struct servent *sv1 = ((void*)0);

 if ((opts & OPT_NORESOLVE) == 0) {
  if (pr == -1) {
   if ((sv = getservbyport(htons(port), "tcp"))) {
    strncpy(buf, sv->s_name, sizeof(buf)-1);
    buf[sizeof(buf)-1] = '\0';
    sv1 = getservbyport(htons(port), "udp");
    sv = strncasecmp(buf, sv->s_name, strlen(buf)) ?
         ((void*)0) : sv1;
   }
   if (sv)
    return (buf);
  } else if ((pr != -2) && (p = getprotobynumber(pr))) {
   if ((sv = getservbyport(htons(port), p->p_name))) {
    strncpy(buf, sv->s_name, sizeof(buf)-1);
    buf[sizeof(buf)-1] = '\0';
    return (buf);
   }
  }
 }

 (void) sprintf(buf, "%d", port);
 return (buf);
}
