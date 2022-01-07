
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; int * usage; } ;
typedef TYPE_1__ SL_cmd ;


 int printf (char*,char*,int *) ;
 int * strstr (int *,char const*) ;

void
sl_apropos (SL_cmd *cmd, const char *topic)
{
    for (; cmd->name != ((void*)0); ++cmd)
        if (cmd->usage != ((void*)0) && strstr(cmd->usage, topic) != ((void*)0))
     printf ("%-20s%s\n", cmd->name, cmd->usage);
}
