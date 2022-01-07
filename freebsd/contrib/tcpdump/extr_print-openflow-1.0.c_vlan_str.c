
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int buf ;


 int const OFP_VLAN_NONE ;
 int snprintf (char*,int,char const*,int const) ;

__attribute__((used)) static const char *
vlan_str(const uint16_t vid)
{
 static char buf[sizeof("65535 (bogus)")];
 const char *fmt;

 if (vid == OFP_VLAN_NONE)
  return "NONE";
 fmt = (vid > 0 && vid < 0x0fff) ? "%u" : "%u (bogus)";
 snprintf(buf, sizeof(buf), fmt, vid);
 return buf;
}
