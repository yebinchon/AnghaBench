
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int SOCKET ;


 scalar_t__ EINTR ;
 size_t INT_MAX ;
 int SOCK_DEBUG_MESSAGE (char*) ;
 int SOCK_EOF_IS_ERROR ;
 int SOCK_RECEIVEALL_YES ;
 scalar_t__ errno ;
 int pcap_snprintf (char*,int,char*,...) ;
 int recv (int ,char*,int,int ) ;
 int sock_geterror (char*,char*,int) ;

int sock_recv(SOCKET sock, void *buffer, size_t size, int flags,
    char *errbuf, int errbuflen)
{
 char *bufp = buffer;
 int remaining;
 ssize_t nread;

 if (size == 0)
 {
  SOCK_DEBUG_MESSAGE("I have been requested to read zero bytes");
  return 0;
 }
 if (size > INT_MAX)
 {
  if (errbuf)
  {
   pcap_snprintf(errbuf, errbuflen,
       "Can't read more than %u bytes with sock_recv",
       INT_MAX);
  }
  return -1;
 }

 bufp = (char *) buffer;
 remaining = (int) size;





 for (;;) {
  nread = recv(sock, bufp, remaining, 0);

  if (nread == -1)
  {

   if (errno == EINTR)
    return -3;

   sock_geterror("recv(): ", errbuf, errbuflen);
   return -1;
  }

  if (nread == 0)
  {
   if ((flags & SOCK_EOF_IS_ERROR) ||
       (remaining != (int) size))
   {





    if (errbuf)
    {
     pcap_snprintf(errbuf, errbuflen,
         "The other host terminated the connection.");
    }
    return -1;
   }
   else
    return 0;
  }





  if (!(flags & SOCK_RECEIVEALL_YES))
  {



   return (int) nread;
  }

  bufp += nread;
  remaining -= nread;

  if (remaining == 0)
   return (int) size;
 }
}
