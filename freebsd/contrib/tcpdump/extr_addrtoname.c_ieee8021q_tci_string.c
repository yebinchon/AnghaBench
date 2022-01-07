
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int buf ;


 int snprintf (char*,int,char*,int const,int const,char*) ;

const char *
ieee8021q_tci_string(const uint16_t tci)
{
 static char buf[128];
 snprintf(buf, sizeof(buf), "vlan %u, p %u%s",
          tci & 0xfff,
          tci >> 13,
          (tci & 0x1000) ? ", DEI" : "");
 return buf;
}
