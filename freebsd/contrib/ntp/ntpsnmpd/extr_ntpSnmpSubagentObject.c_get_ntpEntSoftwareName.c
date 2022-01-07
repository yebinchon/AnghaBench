
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
typedef int ntp_softwarename ;
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
 int memset (char*,int ,int) ;
 int ntpsnmpd_cut_string (char*,char*,char,int ,int) ;
 char* ntpvalue ;
 int read_ntp_value (char*,char*,int) ;
 int snmp_set_var_typed_value (int ,int ,int *,int) ;
 int strlen (char*) ;

int get_ntpEntSoftwareName (netsnmp_mib_handler *handler,
                               netsnmp_handler_registration *reginfo,
                               netsnmp_agent_request_info *reqinfo,
                               netsnmp_request_info *requests)
{
 char ntp_softwarename[NTPQ_BUFLEN];

   memset (ntp_softwarename, 0, NTPQ_BUFLEN);

   switch (reqinfo->mode) {
   case 128:
   {
 if ( read_ntp_value("product", ntpvalue, NTPQ_BUFLEN) )
       {
 snmp_set_var_typed_value(requests->requestvb, ASN_OCTET_STR,
                             (u_char *)ntpvalue,
                             strlen(ntpvalue)
                            );
       }
    else if ( read_ntp_value("version", ntpvalue, NTPQ_BUFLEN) )
    {
 ntpsnmpd_cut_string(ntpvalue, ntp_softwarename, ' ', 0, sizeof(ntp_softwarename)-1);
 snmp_set_var_typed_value(requests->requestvb, ASN_OCTET_STR,
                             (u_char *)ntp_softwarename,
                             strlen(ntp_softwarename)
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
