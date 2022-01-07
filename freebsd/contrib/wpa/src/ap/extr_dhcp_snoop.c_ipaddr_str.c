
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int buf ;


 int os_snprintf (char*,int,char*,int,int,int,int) ;

__attribute__((used)) static const char * ipaddr_str(u32 addr)
{
 static char buf[17];

 os_snprintf(buf, sizeof(buf), "%u.%u.%u.%u",
      (addr >> 24) & 0xff, (addr >> 16) & 0xff,
      (addr >> 8) & 0xff, addr & 0xff);
 return buf;
}
