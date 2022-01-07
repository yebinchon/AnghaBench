
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int linktype_ext; int linktype; int errbuf; } ;
typedef TYPE_1__ pcap_t ;
typedef int pcap_dumper_t ;
typedef int FILE ;


 int PCAP_ERRBUF_SIZE ;
 int dlt_to_linktype (int ) ;
 int * pcap_setup_dump (TYPE_1__*,int,int *,char*) ;
 int pcap_snprintf (int ,int ,char*,int ) ;

pcap_dumper_t *
pcap_dump_fopen(pcap_t *p, FILE *f)
{
 int linktype;

 linktype = dlt_to_linktype(p->linktype);
 if (linktype == -1) {
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
      "stream: link-layer type %d isn't supported in savefiles",
      p->linktype);
  return (((void*)0));
 }
 linktype |= p->linktype_ext;

 return (pcap_setup_dump(p, linktype, f, "stream"));
}
