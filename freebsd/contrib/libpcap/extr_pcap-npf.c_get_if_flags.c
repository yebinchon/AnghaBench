
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_medium ;
typedef int link_state ;
typedef int hardware_status ;
typedef int bpf_u_int32 ;
typedef int NDIS_PHYSICAL_MEDIUM ;
typedef int NDIS_LINK_STATE ;
typedef int NDIS_HARDWARE_STATUS ;
typedef int ADAPTER ;




 size_t N_GEN_PHYSICAL_MEDIUM_OIDS ;
 int OID_GEN_HARDWARE_STATUS ;
 int OID_GEN_LINK_STATE ;
 int OID_GEN_MEDIA_CONNECT_STATUS ;
 int OID_GEN_PHYSICAL_MEDIUM ;
 int OID_GEN_PHYSICAL_MEDIUM_EX ;
 int PCAP_IF_CONNECTION_STATUS_CONNECTED ;
 int PCAP_IF_CONNECTION_STATUS_DISCONNECTED ;
 int PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE ;
 int PCAP_IF_LOOPBACK ;
 int PCAP_IF_RUNNING ;
 int PCAP_IF_UP ;
 int PCAP_IF_WIRELESS ;
 int PacketCloseAdapter (int *) ;
 scalar_t__ PacketGetAirPcapHandle (int *) ;
 int * PacketOpenAdapter (char*) ;
 int free (char*) ;
 int oid_get_request (int *,int,int*,size_t*,char*) ;
 char* strdup (char const*) ;

__attribute__((used)) static int
get_if_flags(const char *name, bpf_u_int32 *flags, char *errbuf)
{
 char *name_copy;
 ADAPTER *adapter;
 int status;
 size_t len;
 NDIS_HARDWARE_STATUS hardware_status;
 int connect_status;

 if (*flags & PCAP_IF_LOOPBACK) {





  *flags |= PCAP_IF_UP | PCAP_IF_RUNNING | PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE;
  return (0);
 }
 name_copy = strdup(name);
 adapter = PacketOpenAdapter(name_copy);
 free(name_copy);
 if (adapter == ((void*)0)) {



  return (0);
 }
 len = sizeof (hardware_status);
 status = oid_get_request(adapter, OID_GEN_HARDWARE_STATUS,
     &hardware_status, &len, errbuf);
 if (status == 0) {
  switch (hardware_status) {

  case 137:




   *flags |= PCAP_IF_UP | PCAP_IF_RUNNING;
   break;

  case 139:
  case 136:




   *flags |= PCAP_IF_UP;
   break;

  case 140:
  case 138:




   break;
  }
 } else {




  *flags |= PCAP_IF_UP | PCAP_IF_RUNNING;
 }
 status = -1;

 if (status == -1) {




  status = oid_get_request(adapter, OID_GEN_MEDIA_CONNECT_STATUS,
      &connect_status, &len, errbuf);
  if (status == 0) {
   switch (connect_status) {

   case 135:



    *flags |= PCAP_IF_CONNECTION_STATUS_CONNECTED;
    break;

   case 134:



    *flags |= PCAP_IF_CONNECTION_STATUS_DISCONNECTED;
    break;
   }
  }
 }
 PacketCloseAdapter(adapter);
 return (0);
}
