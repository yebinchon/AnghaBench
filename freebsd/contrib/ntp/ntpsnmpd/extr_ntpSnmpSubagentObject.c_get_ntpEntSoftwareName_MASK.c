#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ntp_softwarename ;
struct TYPE_5__ {int /*<<< orphan*/  requestvb; } ;
typedef  TYPE_1__ netsnmp_request_info ;
typedef  int /*<<< orphan*/  netsnmp_mib_handler ;
typedef  int /*<<< orphan*/  netsnmp_handler_registration ;
struct TYPE_6__ {int mode; } ;
typedef  TYPE_2__ netsnmp_agent_request_info ;

/* Variables and functions */
 int /*<<< orphan*/  ASN_OCTET_STR ; 
#define  MODE_GET 128 
 int NTPQ_BUFLEN ; 
 int SNMP_ERR_GENERR ; 
 int SNMP_ERR_NOERROR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char,int /*<<< orphan*/ ,int) ; 
 char* ntpvalue ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (char*) ; 

int FUNC5 (netsnmp_mib_handler *handler,
                               netsnmp_handler_registration *reginfo,
                               netsnmp_agent_request_info *reqinfo,
                               netsnmp_request_info *requests)
{
 char ntp_softwarename[NTPQ_BUFLEN];
	
   FUNC0 (ntp_softwarename, 0, NTPQ_BUFLEN);
	
   switch (reqinfo->mode) {
   case MODE_GET:
   {
	if ( FUNC2("product", ntpvalue, NTPQ_BUFLEN) )
       {
	FUNC3(requests->requestvb, ASN_OCTET_STR,
                             (u_char *)ntpvalue,
                             FUNC4(ntpvalue)
                            );
       } 
    else  if ( FUNC2("version", ntpvalue, NTPQ_BUFLEN) )
    {
	FUNC1(ntpvalue, ntp_softwarename, ' ', 0, sizeof(ntp_softwarename)-1);
	FUNC3(requests->requestvb, ASN_OCTET_STR,
                             (u_char *)ntp_softwarename,
                             FUNC4(ntp_softwarename)
                            );
    } else {
	FUNC3(requests->requestvb, ASN_OCTET_STR,
                             (u_char *)"N/A",
                             3
                            );
    }
    break;
    
  }


  default:
	  /* If we cannot get the information we need, we will return a generic error to the SNMP client */
        return SNMP_ERR_GENERR;
  }

  return SNMP_ERR_NOERROR;
}