
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct pcap_rpcap {int rmt_flags; int rmt_clientside; int currentfilter; int rmt_sockdata; int rmt_sockctrl; } ;
struct bpf_program {int dummy; } ;
typedef int socklen_t ;
typedef int peerctrlport ;
typedef int peeraddress ;
struct TYPE_4__ {int errbuf; struct pcap_rpcap* priv; } ;
typedef TYPE_1__ pcap_t ;
typedef int mydataport ;
typedef int myctrlport ;
typedef int myaddress ;


 int NI_NUMERICHOST ;
 int NI_NUMERICSERV ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_OPENFLAG_NOCAPTURE_RPCAP ;
 int free (char*) ;
 scalar_t__ getnameinfo (struct sockaddr*,int,char*,int,char*,int,int) ;
 int getpeername (int ,struct sockaddr*,int*) ;
 int getsockname (int ,struct sockaddr*,int*) ;
 scalar_t__ malloc (size_t) ;
 int pcap_compile (TYPE_1__*,struct bpf_program*,char*,int,int ) ;
 int pcap_snprintf (char*,size_t,char*,char*,char*,char*,char*,char*,char*,char*,...) ;
 int sock_geterror (char*,int ,int ) ;
 size_t strlen (int ) ;

__attribute__((used)) static int pcap_createfilter_norpcappkt(pcap_t *fp, struct bpf_program *prog)
{
 struct pcap_rpcap *pr = fp->priv;
 int RetVal = 0;


 if (pr->rmt_flags & PCAP_OPENFLAG_NOCAPTURE_RPCAP)
 {
  struct sockaddr_storage saddr;
  socklen_t saddrlen;
  char myaddress[128];
  char myctrlport[128];
  char mydataport[128];
  char peeraddress[128];
  char peerctrlport[128];
  char *newfilter;
  const int newstringsize = 1024;
  size_t currentfiltersize;


  saddrlen = sizeof(struct sockaddr_storage);
  if (getpeername(pr->rmt_sockctrl, (struct sockaddr *) &saddr, &saddrlen) == -1)
  {
   sock_geterror("getpeername(): ", fp->errbuf, PCAP_ERRBUF_SIZE);
   return -1;
  }

  if (getnameinfo((struct sockaddr *) &saddr, saddrlen, peeraddress,
   sizeof(peeraddress), peerctrlport, sizeof(peerctrlport), NI_NUMERICHOST | NI_NUMERICSERV))
  {
   sock_geterror("getnameinfo(): ", fp->errbuf, PCAP_ERRBUF_SIZE);
   return -1;
  }



  if (getsockname(pr->rmt_sockctrl, (struct sockaddr *) &saddr, &saddrlen) == -1)
  {
   sock_geterror("getsockname(): ", fp->errbuf, PCAP_ERRBUF_SIZE);
   return -1;
  }


  if (getnameinfo((struct sockaddr *) &saddr, saddrlen, myaddress,
   sizeof(myaddress), myctrlport, sizeof(myctrlport), NI_NUMERICHOST | NI_NUMERICSERV))
  {
   sock_geterror("getnameinfo(): ", fp->errbuf, PCAP_ERRBUF_SIZE);
   return -1;
  }


  if (getsockname(pr->rmt_sockdata, (struct sockaddr *) &saddr, &saddrlen) == -1)
  {
   sock_geterror("getsockname(): ", fp->errbuf, PCAP_ERRBUF_SIZE);
   return -1;
  }


  if (getnameinfo((struct sockaddr *) &saddr, saddrlen, ((void*)0), 0, mydataport, sizeof(mydataport), NI_NUMERICSERV))
  {
   sock_geterror("getnameinfo(): ", fp->errbuf, PCAP_ERRBUF_SIZE);
   return -1;
  }

  currentfiltersize = pr->currentfilter ? strlen(pr->currentfilter) : 0;

  newfilter = (char *)malloc(currentfiltersize + newstringsize + 1);

  if (currentfiltersize)
  {
   pcap_snprintf(newfilter, currentfiltersize + newstringsize,
    "(%s) and not (host %s and host %s and port %s and port %s) and not (host %s and host %s and port %s)",
    pr->currentfilter, myaddress, peeraddress, myctrlport, peerctrlport, myaddress, peeraddress, mydataport);
  }
  else
  {
   pcap_snprintf(newfilter, currentfiltersize + newstringsize,
    "not (host %s and host %s and port %s and port %s) and not (host %s and host %s and port %s)",
    myaddress, peeraddress, myctrlport, peerctrlport, myaddress, peeraddress, mydataport);
  }

  newfilter[currentfiltersize + newstringsize] = 0;






  pr->rmt_clientside = 0;

  if (pcap_compile(fp, prog, newfilter, 1, 0) == -1)
   RetVal = -1;


  pr->rmt_clientside = 1;

  free(newfilter);
 }

 return RetVal;
}
