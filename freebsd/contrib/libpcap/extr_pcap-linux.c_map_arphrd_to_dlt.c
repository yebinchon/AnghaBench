
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u_int ;
struct TYPE_3__ {int linktype; int dlt_count; int offset; void** dlt_list; } ;
typedef TYPE_1__ pcap_t ;
 int DLT_ARCNET_LINUX ;
 int DLT_AX25_KISS ;
 int DLT_CHAOS ;
 int DLT_C_HDLC ;
 void* DLT_DOCSIS ;
 void* DLT_EN10MB ;
 int DLT_EN3MB ;
 void* DLT_FC_2 ;
 void* DLT_FC_2_WITH_FRAME_DELIMS ;
 int DLT_FDDI ;
 int DLT_FRELAY ;
 int DLT_IEEE802 ;
 int DLT_IEEE802_11 ;
 int DLT_IEEE802_11_RADIO ;
 int DLT_IEEE802_15_4_NOFCS ;
 void* DLT_IP_OVER_FC ;
 int DLT_LINUX_IRDA ;
 int DLT_LINUX_LAPD ;
 void* DLT_LINUX_SLL ;
 int DLT_LTALK ;
 int DLT_NETLINK ;
 int DLT_PRISM_HEADER ;
 int DLT_PRONET ;
 void* DLT_RAW ;
 int DLT_VSOCK ;
 int is_wifi (int,char const*) ;
 scalar_t__ malloc (int) ;
 int strncmp (char const*,char const*,int) ;

__attribute__((used)) static void map_arphrd_to_dlt(pcap_t *handle, int sock_fd, int arptype,
         const char *device, int cooked_ok)
{
 static const char cdma_rmnet[] = "cdma_rmnet";

 switch (arptype) {

 case 155:
  if (strncmp(device, cdma_rmnet, sizeof cdma_rmnet - 1) == 0) {
   handle->linktype = DLT_RAW;
   return;
  }
  if (!is_wifi(sock_fd, device)) {



   handle->dlt_list = (u_int *) malloc(sizeof(u_int) * 2);



   if (handle->dlt_list != ((void*)0)) {
    handle->dlt_list[0] = DLT_EN10MB;
    handle->dlt_list[1] = DLT_DOCSIS;
    handle->dlt_count = 2;
   }
  }


 case 138:
 case 139:
  handle->linktype = DLT_EN10MB;
  handle->offset = 2;
  break;

 case 156:
  handle->linktype = DLT_EN3MB;
  break;

 case 163:
  handle->linktype = DLT_AX25_KISS;
  break;

 case 134:
  handle->linktype = DLT_PRONET;
  break;

 case 161:
  handle->linktype = DLT_CHAOS;
  break;



 case 162:







  handle->linktype = DLT_LINUX_SLL;
  break;




 case 143:
 case 148:
  handle->linktype = DLT_IEEE802;
  handle->offset = 2;
  break;

 case 165:
  handle->linktype = DLT_ARCNET_LINUX;
  break;




 case 150:
  handle->linktype = DLT_FDDI;
  handle->offset = 3;
  break;




 case 164:
  if (cooked_ok)
   handle->linktype = DLT_LINUX_SLL;
  else
   handle->linktype = -1;
  break;




 case 147:
  handle->linktype = DLT_IEEE802_11;
  break;




 case 146:
  handle->linktype = DLT_PRISM_HEADER;
  break;




 case 145:
  handle->linktype = DLT_IEEE802_11_RADIO;
  break;

 case 135:
  if (cooked_ok)
   handle->linktype = DLT_LINUX_SLL;
  else {
   handle->linktype = DLT_RAW;
  }
  break;




 case 160:
  handle->linktype = DLT_C_HDLC;
  break;



 case 129:



 case 132:
 case 159:
 case 130:
 case 158:
 case 166:
 case 131:



 case 133:



 case 157:




  handle->linktype = DLT_RAW;
  break;




 case 149:
  handle->linktype = DLT_FRELAY;
  break;

 case 140:
  handle->linktype = DLT_LTALK;
  break;

 case 18:
  handle->linktype = DLT_IP_OVER_FC;
  break;




 case 151:



 case 154:



 case 152:



 case 153:
  handle->dlt_list = (u_int *) malloc(sizeof(u_int) * 3);



  if (handle->dlt_list != ((void*)0)) {
   handle->dlt_list[0] = DLT_FC_2;
   handle->dlt_list[1] = DLT_FC_2_WITH_FRAME_DELIMS;
   handle->dlt_list[2] = DLT_IP_OVER_FC;
   handle->dlt_count = 3;
  }
  handle->linktype = DLT_FC_2;
  break;




 case 142:

  handle->linktype = DLT_LINUX_IRDA;





  break;






 case 141:

  handle->linktype = DLT_LINUX_LAPD;
  break;




 case 136:




  handle->linktype = DLT_RAW;
  break;




       case 144:
               handle->linktype = DLT_IEEE802_15_4_NOFCS;
               break;




 case 137:
  handle->linktype = DLT_NETLINK;
  break;




 case 128:
  handle->linktype = DLT_VSOCK;
  break;

 default:
  handle->linktype = -1;
  break;
 }
}
