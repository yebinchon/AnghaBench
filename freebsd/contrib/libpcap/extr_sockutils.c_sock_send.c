
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int SOCKET ;


 int ECONNRESET ;
 int EPIPE ;
 int GetLastError () ;
 size_t INT_MAX ;
 int MSG_NOSIGNAL ;
 int WSAECONNABORTED ;
 int WSAECONNRESET ;
 int errno ;
 int pcap_snprintf (char*,int,char*,size_t) ;
 int send (int ,char const*,int,int ) ;
 int sock_fmterror (char*,int,char*,int) ;

int sock_send(SOCKET sock, const char *buffer, size_t size,
    char *errbuf, int errbuflen)
{
 int remaining;
 ssize_t nsent;

 if (size > INT_MAX)
 {
  if (errbuf)
  {
   pcap_snprintf(errbuf, errbuflen,
       "Can't send more than %u bytes with sock_recv",
       INT_MAX);
  }
  return -1;
 }
 remaining = (int)size;

 do {
  nsent = send(sock, buffer, remaining, 0);


  if (nsent == -1)
  {





   int errcode;
   errcode = errno;
   if (errcode == ECONNRESET || errcode == EPIPE)
   {





    return -2;
   }
   sock_fmterror("send(): ", errcode, errbuf, errbuflen);

   return -1;
  }

  remaining -= nsent;
  buffer += nsent;
 } while (remaining != 0);

 return 0;
}
