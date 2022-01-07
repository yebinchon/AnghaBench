
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__ const* cmd_defns; } ;
struct TYPE_7__ {int cmd_num; int cmd_flags; int * cmd_desc; int * cmd_name; } ;
typedef TYPE_1__ const ENGINE_CMD_DEFN ;
typedef TYPE_2__ ENGINE ;



 int ENGINE_CTRL_GET_CMD_FROM_NAME ;


 int ENGINE_CTRL_GET_FIRST_CMD_TYPE ;



 int ENGINE_F_INT_CTRL_HELPER ;
 int ENGINE_R_INTERNAL_LIST_ERROR ;
 int ENGINE_R_INVALID_CMD_NAME ;
 int ENGINE_R_INVALID_CMD_NUMBER ;
 int ENGINEerr (int ,int ) ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int int_ctrl_cmd_by_name (TYPE_1__ const*,char*) ;
 int int_ctrl_cmd_by_num (TYPE_1__ const*,unsigned int) ;
 scalar_t__ int_ctrl_cmd_is_null (TYPE_1__ const*) ;
 int * int_no_description ;
 int * strcpy (char*,int *) ;
 int strlen (int *) ;

__attribute__((used)) static int int_ctrl_helper(ENGINE *e, int cmd, long i, void *p,
                           void (*f) (void))
{
    int idx;
    char *s = (char *)p;
    const ENGINE_CMD_DEFN *cdp;


    if (cmd == ENGINE_CTRL_GET_FIRST_CMD_TYPE) {
        if ((e->cmd_defns == ((void*)0)) || int_ctrl_cmd_is_null(e->cmd_defns))
            return 0;
        return e->cmd_defns->cmd_num;
    }

    if ((cmd == ENGINE_CTRL_GET_CMD_FROM_NAME) ||
        (cmd == 130) ||
        (cmd == 132)) {
        if (s == ((void*)0)) {
            ENGINEerr(ENGINE_F_INT_CTRL_HELPER, ERR_R_PASSED_NULL_PARAMETER);
            return -1;
        }
    }

    if (cmd == ENGINE_CTRL_GET_CMD_FROM_NAME) {
        if ((e->cmd_defns == ((void*)0))
            || ((idx = int_ctrl_cmd_by_name(e->cmd_defns, s)) < 0)) {
            ENGINEerr(ENGINE_F_INT_CTRL_HELPER, ENGINE_R_INVALID_CMD_NAME);
            return -1;
        }
        return e->cmd_defns[idx].cmd_num;
    }




    if ((e->cmd_defns == ((void*)0))
        || ((idx = int_ctrl_cmd_by_num(e->cmd_defns, (unsigned int)i)) < 0)) {
        ENGINEerr(ENGINE_F_INT_CTRL_HELPER, ENGINE_R_INVALID_CMD_NUMBER);
        return -1;
    }

    cdp = &e->cmd_defns[idx];
    switch (cmd) {
    case 128:
        cdp++;
        return int_ctrl_cmd_is_null(cdp) ? 0 : cdp->cmd_num;
    case 129:
        return strlen(cdp->cmd_name);
    case 130:
        return strlen(strcpy(s, cdp->cmd_name));
    case 131:
        return strlen(cdp->cmd_desc == ((void*)0) ? int_no_description
                                            : cdp->cmd_desc);
    case 132:
        return strlen(strcpy(s, cdp->cmd_desc == ((void*)0) ? int_no_description
                                                      : cdp->cmd_desc));
    case 133:
        return cdp->cmd_flags;
    }

    ENGINEerr(ENGINE_F_INT_CTRL_HELPER, ENGINE_R_INTERNAL_LIST_ERROR);
    return -1;
}
