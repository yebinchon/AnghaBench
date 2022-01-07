
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int res ;


 int atoi (char*) ;
 scalar_t__ wpa_command_resp (char const*,char*,char*,int) ;

int add_network(const char *ifname)
{
 char res[30];

 if (wpa_command_resp(ifname, "ADD_NETWORK", res, sizeof(res)) < 0)
  return -1;
 return atoi(res);
}
