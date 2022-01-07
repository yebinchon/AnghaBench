
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {int requestvb; } ;
typedef TYPE_1__ netsnmp_request_info ;
typedef int netsnmp_mib_handler ;
typedef int netsnmp_handler_registration ;
struct TYPE_6__ {int mode; } ;
typedef TYPE_2__ netsnmp_agent_request_info ;


 int ASN_OCTET_STR ;

 int NTPQ_BUFLEN ;
 int SNMP_ERR_GENERR ;
 int SNMP_ERR_NOERROR ;
 scalar_t__ ntpvalue ;
 int read_ntp_value (char*,scalar_t__,int ) ;
 int snmp_set_var_typed_value (int ,int ,int *,int) ;
 int strlen (scalar_t__) ;

int get_ntpEntTimeDistance (netsnmp_mib_handler *handler,
                               netsnmp_handler_registration *reginfo,
                               netsnmp_agent_request_info *reqinfo,
                               netsnmp_request_info *requests)
{
   switch (reqinfo->mode) {
   case 128:
   {

    if ( read_ntp_value("rootdelay", ntpvalue, NTPQ_BUFLEN) )
    {
 snmp_set_var_typed_value(requests->requestvb, ASN_OCTET_STR,
                             (u_char *)ntpvalue,
                             strlen(ntpvalue)
                            );
    } else {
 snmp_set_var_typed_value(requests->requestvb, ASN_OCTET_STR,
                             (u_char *)"N/A",
                             3
                            );
    }
    break;

  }


  default:

        return SNMP_ERR_GENERR;
  }

  return SNMP_ERR_NOERROR;
}
