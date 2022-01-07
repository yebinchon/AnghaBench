
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sip ;
typedef int in_addr_t ;


 int snprintf (char*,int,char*,int,int,int,int) ;

__attribute__((used)) static char *
ip2str(in_addr_t ip)
{
 static char sip[16];

 snprintf(sip, sizeof(sip), "%u.%u.%u.%u",
     ((ip >> 24) & 0xff),
     ((ip >> 16) & 0xff),
     ((ip >> 8) & 0xff),
     (ip & 0xff));
 return (sip);
}
