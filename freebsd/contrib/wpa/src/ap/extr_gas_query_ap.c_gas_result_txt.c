
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gas_query_ap_result { ____Placeholder_gas_query_ap_result } gas_query_ap_result ;
__attribute__((used)) static const char * gas_result_txt(enum gas_query_ap_result result)
{
 switch (result) {
 case 129:
  return "SUCCESS";
 case 132:
  return "FAILURE";
 case 128:
  return "TIMEOUT";
 case 130:
  return "PEER_ERROR";
 case 131:
  return "INTERNAL_ERROR";
 case 133:
  return "DELETED_AT_DEINIT";
 }

 return "N/A";
}
