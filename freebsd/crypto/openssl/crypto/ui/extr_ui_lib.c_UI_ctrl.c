
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ UI ;


 int ERR_R_PASSED_NULL_PARAMETER ;


 int UI_FLAG_PRINT_ERRORS ;
 int UI_FLAG_REDOABLE ;
 int UI_F_UI_CTRL ;
 int UI_R_UNKNOWN_CONTROL_COMMAND ;
 int UIerr (int ,int ) ;

int UI_ctrl(UI *ui, int cmd, long i, void *p, void (*f) (void))
{
    if (ui == ((void*)0)) {
        UIerr(UI_F_UI_CTRL, ERR_R_PASSED_NULL_PARAMETER);
        return -1;
    }
    switch (cmd) {
    case 128:
        {
            int save_flag = ! !(ui->flags & UI_FLAG_PRINT_ERRORS);
            if (i)
                ui->flags |= UI_FLAG_PRINT_ERRORS;
            else
                ui->flags &= ~UI_FLAG_PRINT_ERRORS;
            return save_flag;
        }
    case 129:
        return ! !(ui->flags & UI_FLAG_REDOABLE);
    default:
        break;
    }
    UIerr(UI_F_UI_CTRL, UI_R_UNKNOWN_CONTROL_COMMAND);
    return -1;
}
