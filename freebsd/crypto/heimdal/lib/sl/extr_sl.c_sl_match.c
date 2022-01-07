
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ name; scalar_t__ func; } ;
typedef TYPE_1__ SL_cmd ;


 scalar_t__ strcmp (char*,scalar_t__) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,scalar_t__,int ) ;

SL_cmd *
sl_match (SL_cmd *cmds, char *cmd, int exactp)
{
    SL_cmd *c, *current = ((void*)0), *partial_cmd = ((void*)0);
    int partial_match = 0;

    for (c = cmds; c->name; ++c) {
 if (c->func)
     current = c;
 if (strcmp (cmd, c->name) == 0)
     return current;
 else if (strncmp (cmd, c->name, strlen(cmd)) == 0 &&
   partial_cmd != current) {
     ++partial_match;
     partial_cmd = current;
 }
    }
    if (partial_match == 1 && !exactp)
 return partial_cmd;
    else
 return ((void*)0);
}
