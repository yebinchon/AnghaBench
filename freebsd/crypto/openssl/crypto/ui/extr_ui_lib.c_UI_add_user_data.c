
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int flags; void* user_data; TYPE_1__* meth; } ;
typedef TYPE_2__ UI ;
struct TYPE_5__ {int (* ui_destroy_data ) (TYPE_2__*,void*) ;} ;


 int UI_FLAG_DUPL_DATA ;
 int stub1 (TYPE_2__*,void*) ;

void *UI_add_user_data(UI *ui, void *user_data)
{
    void *old_data = ui->user_data;

    if ((ui->flags & UI_FLAG_DUPL_DATA) != 0) {
        ui->meth->ui_destroy_data(ui, old_data);
        old_data = ((void*)0);
    }
    ui->user_data = user_data;
    ui->flags &= ~UI_FLAG_DUPL_DATA;
    return old_data;
}
