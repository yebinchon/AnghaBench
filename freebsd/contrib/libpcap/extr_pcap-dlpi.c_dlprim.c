
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bpf_u_int32 ;
 int pcap_snprintf (char*,size_t,char*,int) ;

__attribute__((used)) static char *
dlprim(char *primbuf, size_t primbufsize, bpf_u_int32 prim)
{
 switch (prim) {

 case 142:
  return ("DL_INFO_REQ");

 case 143:
  return ("DL_INFO_ACK");

 case 154:
  return ("DL_ATTACH_REQ");

 case 147:
  return ("DL_DETACH_REQ");

 case 152:
  return ("DL_BIND_REQ");

 case 153:
  return ("DL_BIND_ACK");

 case 130:
  return ("DL_UNBIND_REQ");

 case 141:
  return ("DL_OK_ACK");

 case 144:
  return ("DL_ERROR_ACK");

 case 135:
  return ("DL_SUBS_BIND_REQ");

 case 136:
  return ("DL_SUBS_BIND_ACK");

 case 128:
  return ("DL_UNITDATA_REQ");

 case 129:
  return ("DL_UNITDATA_IND");

 case 132:
  return ("DL_UDERROR_IND");

 case 131:
  return ("DL_UDQOS_REQ");

 case 149:
  return ("DL_CONNECT_REQ");

 case 150:
  return ("DL_CONNECT_IND");

 case 148:
  return ("DL_CONNECT_RES");

 case 151:
  return ("DL_CONNECT_CON");

 case 133:
  return ("DL_TOKEN_REQ");

 case 134:
  return ("DL_TOKEN_ACK");

 case 145:
  return ("DL_DISCONNECT_REQ");

 case 146:
  return ("DL_DISCONNECT_IND");

 case 138:
  return ("DL_RESET_REQ");

 case 139:
  return ("DL_RESET_IND");

 case 137:
  return ("DL_RESET_RES");

 case 140:
  return ("DL_RESET_CON");

 default:
  pcap_snprintf(primbuf, primbufsize, "unknown primitive 0x%x",
      prim);
  return (primbuf);
 }
}
