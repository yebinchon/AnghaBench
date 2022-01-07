
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* func ) (int,char**) ;} ;
typedef TYPE_1__ SL_cmd ;


 TYPE_1__* sl_match (TYPE_1__*,char*,int ) ;
 int stub1 (int,char**) ;

int
sl_command(SL_cmd *cmds, int argc, char **argv)
{
    SL_cmd *c;
    c = sl_match (cmds, argv[0], 0);
    if (c == ((void*)0))
 return -1;
    return (*c->func)(argc, argv);
}
