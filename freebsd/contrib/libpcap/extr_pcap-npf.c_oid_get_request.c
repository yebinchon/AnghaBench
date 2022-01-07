
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int bpf_u_int32 ;
typedef size_t ULONG ;
struct TYPE_5__ {size_t Length; int Data; int Oid; } ;
typedef TYPE_1__ PACKET_OID_DATA ;
typedef int ADAPTER ;


 int FALSE ;
 int GetLastError () ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int PacketRequest (int *,int ,TYPE_1__*) ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int memcpy (void*,int ,size_t) ;
 int pcap_snprintf (char*,int ,char*,...) ;
 int pcap_win32_err_to_str (int ,char*) ;

__attribute__((used)) static int
oid_get_request(ADAPTER *adapter, bpf_u_int32 oid, void *data, size_t *lenp,
    char *errbuf)
{
 PACKET_OID_DATA *oid_data_arg;
 oid_data_arg = malloc(sizeof (PACKET_OID_DATA) + *lenp);
 if (oid_data_arg == ((void*)0)) {
  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
      "Couldn't allocate argument buffer for PacketRequest");
  return (PCAP_ERROR);
 }




 oid_data_arg->Oid = oid;
 oid_data_arg->Length = (ULONG)(*lenp);
 if (!PacketRequest(adapter, FALSE, oid_data_arg)) {
  char errmsgbuf[PCAP_ERRBUF_SIZE+1];

  pcap_win32_err_to_str(GetLastError(), errmsgbuf);
  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
      "Error calling PacketRequest: %s", errmsgbuf);
  free(oid_data_arg);
  return (-1);
 }




 *lenp = oid_data_arg->Length;




 memcpy(data, oid_data_arg->Data, *lenp);
 free(oid_data_arg);
 return (0);
}
