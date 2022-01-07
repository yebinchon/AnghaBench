
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent {char* p_name; int p_proto; char** p_aliases; } ;


 int snprintf (char*,size_t,char*,...) ;

__attribute__((used)) static void
sdump_protoent(struct protoent *pe, char *buffer, size_t buflen)
{
 char **cp;
 int written;

 written = snprintf(buffer, buflen, "%s %d",
  pe->p_name, pe->p_proto);
 buffer += written;
 if (written > (int)buflen)
  return;
 buflen -= written;

 if (pe->p_aliases != ((void*)0)) {
  if (*(pe->p_aliases) != ((void*)0)) {
   for (cp = pe->p_aliases; *cp; ++cp) {
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
