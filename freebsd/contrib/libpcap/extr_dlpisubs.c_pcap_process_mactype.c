
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {int offset; int* dlt_list; int dlt_count; int errbuf; void* linktype; } ;
typedef TYPE_1__ pcap_t ;


 int DLT_DOCSIS ;
 void* DLT_EN10MB ;
 void* DLT_FDDI ;
 void* DLT_IEEE802 ;
 void* DLT_IPV4 ;
 void* DLT_IPV6 ;
 void* DLT_RAW ;
 void* DLT_SUNATM ;
 int PCAP_ERRBUF_SIZE ;
 scalar_t__ malloc (int) ;
 int pcap_snprintf (int ,int ,char*,int) ;

int
pcap_process_mactype(pcap_t *p, u_int mactype)
{
 int retv = 0;

 switch (mactype) {

 case 135:
 case 134:
  p->linktype = DLT_EN10MB;
  p->offset = 2;
  p->dlt_list = (u_int *)malloc(sizeof(u_int) * 2);



  if (p->dlt_list != ((void*)0)) {
   p->dlt_list[0] = DLT_EN10MB;
   p->dlt_list[1] = DLT_DOCSIS;
   p->dlt_count = 2;
  }
  break;

 case 133:
  p->linktype = DLT_FDDI;
  p->offset = 3;
  break;

 case 128:

  p->linktype = DLT_IEEE802;
  p->offset = 2;
  break;
 case 130:
  p->linktype = DLT_IPV4;
  p->offset = 0;
  break;



 case 129:
  p->linktype = DLT_IPV6;
  p->offset = 0;
  break;



 case 131:
  p->linktype = DLT_RAW;
  p->offset = 0;
  break;


 default:
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE, "unknown mactype 0x%x",
      mactype);
  retv = -1;
 }

 return (retv);
}
