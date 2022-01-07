
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {char* s_name; char* s_proto; char** s_aliases; int s_port; } ;


 int ntohs (int ) ;
 int snprintf (char*,size_t,char*,...) ;

__attribute__((used)) static void
sdump_servent(struct servent *serv, char *buffer, size_t buflen)
{
 char **cp;
 int written;

 written = snprintf(buffer, buflen, "%s %d %s",
  serv->s_name, ntohs(serv->s_port), serv->s_proto);
 buffer += written;
 if (written > (int)buflen)
  return;
 buflen -= written;

 if (serv->s_aliases != ((void*)0)) {
  if (*(serv->s_aliases) != ((void*)0)) {
   for (cp = serv->s_aliases; *cp; ++cp) {
    written = snprintf(buffer, buflen, " %s", *cp);
    buffer += written;
    if (written > (int)buflen)
     return;
    buflen -= written;

    if (buflen == 0)
     return;
   }
  } else
   snprintf(buffer, buflen, " noaliases");
 } else
  snprintf(buffer, buflen, " (null)");
}
