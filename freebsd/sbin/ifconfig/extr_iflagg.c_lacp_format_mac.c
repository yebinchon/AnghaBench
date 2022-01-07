
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int snprintf (char*,size_t,char*,int,int,int,int,int,int) ;

__attribute__((used)) static char *
lacp_format_mac(const uint8_t *mac, char *buf, size_t buflen)
{
 snprintf(buf, buflen, "%02X-%02X-%02X-%02X-%02X-%02X",
     (int)mac[0], (int)mac[1], (int)mac[2], (int)mac[3],
     (int)mac[4], (int)mac[5]);

 return (buf);
}
