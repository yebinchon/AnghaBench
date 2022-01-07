
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cmd; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* hostapd_cli_commands ;
 char** os_calloc (int,int) ;
 char* os_strdup (scalar_t__) ;

__attribute__((used)) static char ** list_cmd_list(void)
{
 char **res;
 int i, count;

 count = ARRAY_SIZE(hostapd_cli_commands);
 res = os_calloc(count + 1, sizeof(char *));
 if (res == ((void*)0))
  return ((void*)0);

 for (i = 0; hostapd_cli_commands[i].cmd; i++) {
  res[i] = os_strdup(hostapd_cli_commands[i].cmd);
  if (res[i] == ((void*)0))
   break;
 }

 return res;
}
