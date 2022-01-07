
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int flags; TYPE_1__* meth; int strings; } ;
typedef TYPE_2__ UI ;
struct TYPE_9__ {scalar_t__ (* ui_open_session ) (TYPE_2__*) ;scalar_t__ (* ui_write_string ) (TYPE_2__*,int ) ;int (* ui_flush ) (TYPE_2__*) ;int (* ui_read_string ) (TYPE_2__*,int ) ;scalar_t__ (* ui_close_session ) (TYPE_2__*) ;} ;


 int ERR_add_error_data (int,char*,char const*) ;
 int ERR_print_errors_cb (int (*) (char const*,size_t,void*),void*) ;
 int UI_FLAG_PRINT_ERRORS ;
 int UI_FLAG_REDOABLE ;
 int UI_F_UI_PROCESS ;
 int UI_R_PROCESSING_ERROR ;
 int UIerr (int ,int ) ;
 scalar_t__ print_error ;
 int sk_UI_STRING_num (int ) ;
 int sk_UI_STRING_value (int ,int) ;
 scalar_t__ stub1 (TYPE_2__*) ;
 scalar_t__ stub2 (TYPE_2__*,int ) ;
 int stub3 (TYPE_2__*) ;
 int stub4 (TYPE_2__*,int ) ;
 scalar_t__ stub5 (TYPE_2__*) ;

int UI_process(UI *ui)
{
    int i, ok = 0;
    const char *state = "processing";

    if (ui->meth->ui_open_session != ((void*)0)
        && ui->meth->ui_open_session(ui) <= 0) {
        state = "opening session";
        ok = -1;
        goto err;
    }

    if (ui->flags & UI_FLAG_PRINT_ERRORS)
        ERR_print_errors_cb((int (*)(const char *, size_t, void *))
                            print_error, (void *)ui);

    for (i = 0; i < sk_UI_STRING_num(ui->strings); i++) {
        if (ui->meth->ui_write_string != ((void*)0)
            && (ui->meth->ui_write_string(ui,
                                          sk_UI_STRING_value(ui->strings, i))
                <= 0))
        {
            state = "writing strings";
            ok = -1;
            goto err;
        }
    }

    if (ui->meth->ui_flush != ((void*)0))
        switch (ui->meth->ui_flush(ui)) {
        case -1:
            ui->flags &= ~UI_FLAG_REDOABLE;
            ok = -2;
            goto err;
        case 0:
            state = "flushing";
            ok = -1;
            goto err;
        default:
            ok = 0;
            break;
        }

    for (i = 0; i < sk_UI_STRING_num(ui->strings); i++) {
        if (ui->meth->ui_read_string != ((void*)0)) {
            switch (ui->meth->ui_read_string(ui,
                                             sk_UI_STRING_value(ui->strings,
                                                                i))) {
            case -1:
                ui->flags &= ~UI_FLAG_REDOABLE;
                ok = -2;
                goto err;
            case 0:
                state = "reading strings";
                ok = -1;
                goto err;
            default:
                ok = 0;
                break;
            }
        }
    }

    state = ((void*)0);
 err:
    if (ui->meth->ui_close_session != ((void*)0)
        && ui->meth->ui_close_session(ui) <= 0) {
        if (state == ((void*)0))
            state = "closing session";
        ok = -1;
    }

    if (ok == -1) {
        UIerr(UI_F_UI_PROCESS, UI_R_PROCESSING_ERROR);
        ERR_add_error_data(2, "while ", state);
    }
    return ok;
}
