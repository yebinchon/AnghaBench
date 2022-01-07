
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_flags; int ai_family; int ai_socktype; int ai_protocol; int ai_addrlen; char* ai_canonname; struct addrinfo* ai_next; int * ai_addr; } ;


 int snprintf (char*,size_t,char*,...) ;

void
sdump_addrinfo(struct addrinfo *ai, char *buffer, size_t buflen)
{
 int written, i;

 written = snprintf(buffer, buflen, "%d %d %d %d %d ",
  ai->ai_flags, ai->ai_family, ai->ai_socktype, ai->ai_protocol,
  ai->ai_addrlen);
 buffer += written;
 if (written > (int)buflen)
  return;
 buflen -= written;

 written = snprintf(buffer, buflen, "%s ",
  ai->ai_canonname == ((void*)0) ? "(null)" : ai->ai_canonname);
 buffer += written;
 if (written > (int)buflen)
  return;
 buflen -= written;

 if (ai->ai_addr == ((void*)0)) {
  written = snprintf(buffer, buflen, "(null)");
  buffer += written;
  if (written > (int)buflen)
   return;
  buflen -= written;
 } else {
  for (i = 0; i < (int)ai->ai_addrlen; i++) {
   written = snprintf(buffer, buflen,
       i + 1 != (int)ai->ai_addrlen ? "%d." : "%d",
       ((unsigned char *)ai->ai_addr)[i]);
   buffer += written;
   if (written > (int)buflen)
    return;
   buflen -= written;

   if (buflen == 0)
    return;
  }
 }

 if (ai->ai_next != ((void*)0)) {
  written = snprintf(buffer, buflen, ":");
  buffer += written;
  if (written > (int)buflen)
   return;
  buflen -= written;

  sdump_addrinfo(ai->ai_next, buffer, buflen);
 }
}
