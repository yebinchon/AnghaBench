
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_win {int adapter; } ;
struct TYPE_3__ {int errbuf; struct pcap_win* priv; } ;
typedef TYPE_1__ pcap_t ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ FALSE ;
 int PACKET_MODE_DUMP ;
 int PCAP_ERRBUF_SIZE ;
 scalar_t__ PacketSetDumpLimits (int ,int,int) ;
 scalar_t__ PacketSetDumpName (int ,char*,int) ;
 scalar_t__ PacketSetMode (int ,int ) ;
 int pcap_snprintf (int ,int ,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
pcap_live_dump_npf(pcap_t *p, char *filename, int maxsize, int maxpacks)
{
 struct pcap_win *pw = p->priv;
 BOOLEAN res;


 res = PacketSetMode(pw->adapter, PACKET_MODE_DUMP);
 if(res == FALSE){
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
      "Error setting dump mode");
  return (-1);
 }


 res = PacketSetDumpName(pw->adapter, filename, (int)strlen(filename));
 if(res == FALSE){
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
      "Error setting kernel dump file name");
  return (-1);
 }


 res = PacketSetDumpLimits(pw->adapter, maxsize, maxpacks);
 if(res == FALSE) {
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
        "Error setting dump limit");
  return (-1);
 }

 return (0);
}
