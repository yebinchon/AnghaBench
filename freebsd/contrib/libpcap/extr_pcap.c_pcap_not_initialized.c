
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int errbuf; scalar_t__ activated; } ;
typedef TYPE_1__ pcap_t ;


 int PCAP_ERROR ;
 int PCAP_ERROR_NOT_ACTIVATED ;
 int pcap_snprintf (int ,int,char*) ;

__attribute__((used)) static int
pcap_not_initialized(pcap_t *pcap)
{
 if (pcap->activated) {

  (void)pcap_snprintf(pcap->errbuf, sizeof(pcap->errbuf),
      "This operation isn't properly handled by that device");
  return (PCAP_ERROR);
 }

 (void)pcap_snprintf(pcap->errbuf, sizeof(pcap->errbuf),
     "This handle hasn't been activated yet");

 return (PCAP_ERROR_NOT_ACTIVATED);
}
