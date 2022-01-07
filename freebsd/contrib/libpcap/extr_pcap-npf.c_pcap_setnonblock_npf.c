
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pcap_win {int nonblock; int adapter; } ;
struct TYPE_4__ {int timeout; } ;
struct TYPE_5__ {int errbuf; TYPE_1__ opt; struct pcap_win* priv; } ;
typedef TYPE_2__ pcap_t ;


 int GetLastError () ;
 int PCAP_ERRBUF_SIZE ;
 int PacketSetReadTimeout (int ,int) ;
 int pcap_snprintf (int ,int ,char*,char*) ;
 int pcap_win32_err_to_str (int ,char*) ;

__attribute__((used)) static int
pcap_setnonblock_npf(pcap_t *p, int nonblock)
{
 struct pcap_win *pw = p->priv;
 int newtimeout;
 char win_errbuf[PCAP_ERRBUF_SIZE+1];

 if (nonblock) {




  newtimeout = -1;
 } else {
  newtimeout = p->opt.timeout;
 }
 if (!PacketSetReadTimeout(pw->adapter, newtimeout)) {
  pcap_win32_err_to_str(GetLastError(), win_errbuf);
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
      "PacketSetReadTimeout: %s", win_errbuf);
  return (-1);
 }
 pw->nonblock = (newtimeout == -1);
 return (0);
}
