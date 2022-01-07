
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_4__ {int dlt_count; int (* set_datalink_op ) (TYPE_1__*,int) ;int linktype; scalar_t__* dlt_list; int errbuf; } ;
typedef TYPE_1__ pcap_t ;


 int DLT_DOCSIS ;
 scalar_t__ DLT_EN10MB ;
 char* pcap_datalink_val_to_name (int) ;
 int pcap_snprintf (int ,int,char*,...) ;
 int stub1 (TYPE_1__*,int) ;

int
pcap_set_datalink(pcap_t *p, int dlt)
{
 int i;
 const char *dlt_name;

 if (dlt < 0)
  goto unsupported;

 if (p->dlt_count == 0 || p->set_datalink_op == ((void*)0)) {







  if (p->linktype != dlt)
   goto unsupported;




  return (0);
 }
 for (i = 0; i < p->dlt_count; i++)
  if (p->dlt_list[i] == (u_int)dlt)
   break;
 if (i >= p->dlt_count)
  goto unsupported;
 if (p->dlt_count == 2 && p->dlt_list[0] == DLT_EN10MB &&
     dlt == DLT_DOCSIS) {
  p->linktype = dlt;
  return (0);
 }
 if (p->set_datalink_op(p, dlt) == -1)
  return (-1);
 p->linktype = dlt;
 return (0);

unsupported:
 dlt_name = pcap_datalink_val_to_name(dlt);
 if (dlt_name != ((void*)0)) {
  (void) pcap_snprintf(p->errbuf, sizeof(p->errbuf),
      "%s is not one of the DLTs supported by this device",
      dlt_name);
 } else {
  (void) pcap_snprintf(p->errbuf, sizeof(p->errbuf),
      "DLT %d is not one of the DLTs supported by this device",
      dlt);
 }
 return (-1);
}
