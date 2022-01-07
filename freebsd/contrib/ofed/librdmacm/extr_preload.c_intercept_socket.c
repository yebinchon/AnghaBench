
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int domain; int type; int protocol; int name; } ;


 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 TYPE_1__* config ;
 int config_cnt ;
 int program_invocation_short_name ;
 int strlen (int ) ;
 int strncasecmp (int ,int ,int ) ;

__attribute__((used)) static int intercept_socket(int domain, int type, int protocol)
{
 int i;

 if (!config_cnt)
  return 1;

 if (!protocol) {
  if (type == SOCK_STREAM)
   protocol = IPPROTO_TCP;
  else if (type == SOCK_DGRAM)
   protocol = IPPROTO_UDP;
 }

 for (i = 0; i < config_cnt; i++) {
  if ((!config[i].name ||
       !strncasecmp(config[i].name, program_invocation_short_name,
      strlen(config[i].name))) &&
      (!config[i].domain || config[i].domain == domain) &&
      (!config[i].type || config[i].type == type) &&
      (!config[i].protocol || config[i].protocol == protocol))
   return 1;
 }

 return 0;
}
