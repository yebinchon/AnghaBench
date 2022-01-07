
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int message ;
typedef char TCHAR ;


 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 int FORMAT_MESSAGE_MAX_WIDTH_MASK ;
 int FormatMessage (int,int *,int,int ,char*,int,int *) ;
 int LANG_NEUTRAL ;
 int MAKELANGID (int ,int ) ;
 int SOCK_ERRBUF_SIZE ;
 int SUBLANG_DEFAULT ;
 int pcap_snprintf (char*,int,char*,...) ;
 char* strerror (int) ;

void sock_fmterror(const char *caller, int errcode, char *errbuf, int errbuflen)
{
 char *message;

 if (errbuf == ((void*)0))
  return;

 message = strerror(errcode);

 if ((caller) && (*caller))
  pcap_snprintf(errbuf, errbuflen, "%s%s (code %d)", caller, message, errcode);
 else
  pcap_snprintf(errbuf, errbuflen, "%s (code %d)", message, errcode);

}
