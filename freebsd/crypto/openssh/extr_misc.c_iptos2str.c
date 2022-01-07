
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; int value; } ;


 TYPE_1__* ipqos ;
 int snprintf (char*,int,char*,int) ;

const char *
iptos2str(int iptos)
{
 int i;
 static char iptos_str[sizeof "0xff"];

 for (i = 0; ipqos[i].name != ((void*)0); i++) {
  if (ipqos[i].value == iptos)
   return ipqos[i].name;
 }
 snprintf(iptos_str, sizeof iptos_str, "0x%02x", iptos);
 return iptos_str;
}
