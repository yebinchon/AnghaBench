
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct pcap_win {int adapter; } ;
struct TYPE_7__ {int errbuf; struct pcap_win* priv; } ;
typedef TYPE_1__ pcap_t ;
typedef int bpf_u_int32 ;
typedef size_t ULONG ;
struct TYPE_8__ {size_t Length; int Data; int Oid; } ;
typedef TYPE_2__ PACKET_OID_DATA ;


 int GetLastError () ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int PacketRequest (int ,int ,TYPE_2__*) ;
 int TRUE ;
 int free (TYPE_2__*) ;
 TYPE_2__* malloc (int) ;
 int memcpy (int ,void const*,size_t) ;
 int pcap_snprintf (int ,int ,char*,...) ;
 int pcap_win32_err_to_str (int ,char*) ;

__attribute__((used)) static int
pcap_oid_set_request_npf(pcap_t *p, bpf_u_int32 oid, const void *data,
    size_t *lenp)
{
 struct pcap_win *pw = p->priv;
 PACKET_OID_DATA *oid_data_arg;
 char errbuf[PCAP_ERRBUF_SIZE+1];
 oid_data_arg = malloc(sizeof (PACKET_OID_DATA) + *lenp);
 if (oid_data_arg == ((void*)0)) {
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
      "Couldn't allocate argument buffer for PacketRequest");
  return (PCAP_ERROR);
 }

 oid_data_arg->Oid = oid;
 oid_data_arg->Length = (ULONG)(*lenp);
 memcpy(oid_data_arg->Data, data, *lenp);
 if (!PacketRequest(pw->adapter, TRUE, oid_data_arg)) {
  pcap_win32_err_to_str(GetLastError(), errbuf);
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
      "Error calling PacketRequest: %s", errbuf);
  free(oid_data_arg);
  return (PCAP_ERROR);
 }




 *lenp = oid_data_arg->Length;




 free(oid_data_arg);
 return (0);
}
