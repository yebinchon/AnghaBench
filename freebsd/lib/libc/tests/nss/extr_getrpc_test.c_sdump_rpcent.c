
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcent {char* r_name; int r_number; char** r_aliases; } ;


 int snprintf (char*,size_t,char*,...) ;

__attribute__((used)) static void
sdump_rpcent(struct rpcent *rpc, char *buffer, size_t buflen)
{
 char **cp;
 int written;

 written = snprintf(buffer, buflen, "%s %d",
  rpc->r_name, rpc->r_number);
 buffer += written;
 if (written > (int)buflen)
  return;
 buflen -= written;

 if (rpc->r_aliases != ((void*)0)) {
  if (*(rpc->r_aliases) != ((void*)0)) {
   for (cp = rpc->r_aliases; *cp; ++cp) {
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
