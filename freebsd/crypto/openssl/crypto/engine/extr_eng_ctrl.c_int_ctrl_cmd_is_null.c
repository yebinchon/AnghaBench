
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cmd_num; int * cmd_name; } ;
typedef TYPE_1__ ENGINE_CMD_DEFN ;



__attribute__((used)) static int int_ctrl_cmd_is_null(const ENGINE_CMD_DEFN *defn)
{
    if ((defn->cmd_num == 0) || (defn->cmd_name == ((void*)0)))
        return 1;
    return 0;
}
