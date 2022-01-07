
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int cmd_num; } ;
typedef TYPE_1__ ENGINE_CMD_DEFN ;


 int int_ctrl_cmd_is_null (TYPE_1__ const*) ;

__attribute__((used)) static int int_ctrl_cmd_by_num(const ENGINE_CMD_DEFN *defn, unsigned int num)
{
    int idx = 0;




    while (!int_ctrl_cmd_is_null(defn) && (defn->cmd_num < num)) {
        idx++;
        defn++;
    }
    if (defn->cmd_num == num)
        return idx;

    return -1;
}
