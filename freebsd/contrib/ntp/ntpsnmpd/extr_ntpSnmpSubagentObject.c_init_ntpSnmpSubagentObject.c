
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NTP_OID_RO (int ,int,int,int,int ) ;
 int ntpEntSoftwareName ;
 int ntpEntSoftwareVendor ;
 int ntpEntSoftwareVersion ;
 int ntpEntSystemType ;
 int ntpEntTimeDistance ;
 int ntpEntTimePrecision ;
 int ntpEntTimeResolution ;

void
init_ntpSnmpSubagentObject(void)
{

 NTP_OID_RO( ntpEntSoftwareName, 1, 1, 1, 0);
 NTP_OID_RO( ntpEntSoftwareVersion, 1, 1, 2, 0);
 NTP_OID_RO( ntpEntSoftwareVendor, 1, 1, 3, 0);
 NTP_OID_RO( ntpEntSystemType, 1, 1, 4, 0);
 NTP_OID_RO( ntpEntTimeResolution, 1, 1, 5, 0);
 NTP_OID_RO( ntpEntTimePrecision, 1, 1, 6, 0);
 NTP_OID_RO( ntpEntTimeDistance, 1, 1, 7, 0);
}
