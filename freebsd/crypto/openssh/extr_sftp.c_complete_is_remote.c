
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int t; scalar_t__ c; } ;


 TYPE_1__* cmds ;
 int strlen (scalar_t__) ;
 int strncasecmp (char*,scalar_t__,int ) ;

__attribute__((used)) static int
complete_is_remote(char *cmd) {
 int i;

 if (cmd == ((void*)0))
  return -1;

 for (i = 0; cmds[i].c; i++) {
  if (!strncasecmp(cmd, cmds[i].c, strlen(cmds[i].c)))
   return cmds[i].t;
 }

 return -1;
}
