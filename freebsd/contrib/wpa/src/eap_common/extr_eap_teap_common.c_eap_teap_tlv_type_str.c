
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum teap_tlv_types { ____Placeholder_teap_tlv_types } teap_tlv_types ;
const char * eap_teap_tlv_type_str(enum teap_tlv_types type)
{
 switch (type) {
 case 144:
  return "Authority-ID";
 case 137:
  return "Identity-Type";
 case 130:
  return "Result";
 case 135:
  return "NAK";
 case 138:
  return "Error";
 case 141:
  return "Channel-Binding";
 case 128:
  return "Vendor-Specific";
 case 131:
  return "Request-Action";
 case 139:
  return "EAP-Payload";
 case 136:
  return "Intermediate-Result";
 case 134:
  return "PAC";
 case 140:
  return "Crypto-Binding";
 case 143:
  return "Basic-Password-Auth-Req";
 case 142:
  return "Basic-Password-Auth-Resp";
 case 132:
  return "PKCS#7";
 case 133:
  return "PKCS#10";
 case 129:
  return "Trusted-Server-Root";
 }

 return "?";
}
