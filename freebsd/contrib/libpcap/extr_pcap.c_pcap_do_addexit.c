
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int errbuf; } ;
typedef TYPE_1__ pcap_t ;


 int PCAP_ERRBUF_SIZE ;
 scalar_t__ atexit (int ) ;
 int did_atexit ;
 int pcap_close_all ;
 int strlcpy (int ,char*,int ) ;

int
pcap_do_addexit(pcap_t *p)
{




 if (!did_atexit) {
  if (atexit(pcap_close_all) != 0) {



   strlcpy(p->errbuf, "atexit failed", PCAP_ERRBUF_SIZE);
   return (0);
  }
  did_atexit = 1;
 }
 return (1);
}
