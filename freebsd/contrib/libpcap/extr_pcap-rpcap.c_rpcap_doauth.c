
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
struct pcap_rmtauth {int dummy; } ;
typedef int SOCKET ;


 int PCAP_ERRBUF_SIZE ;
 int RPCAP_MAX_VERSION ;
 int pcap_snprintf (char*,int ,char*,...) ;
 int rpcap_sendauth (int ,int *,struct pcap_rmtauth*,char*) ;

__attribute__((used)) static int rpcap_doauth(SOCKET sockctrl, uint8 *ver, struct pcap_rmtauth *auth, char *errbuf)
{
 int status;






 *ver = RPCAP_MAX_VERSION;
 status = rpcap_sendauth(sockctrl, ver, auth, errbuf);
 if (status == 0)
 {



  return 0;
 }
 if (status == -1)
 {

  return -1;
 }
 status = rpcap_sendauth(sockctrl, ver, auth, errbuf);
 if (status == 0)
 {



  return 0;
 }
 if (status == -1)
 {

  return -1;
 }
 if (status == -2)
 {





  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE, "The server doesn't support any protocol version that we support");
  return -1;
 }
 pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE, "rpcap_sendauth() returned %d", status);
 return -1;
}
