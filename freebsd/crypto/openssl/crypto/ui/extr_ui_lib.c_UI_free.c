
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int flags; int lock; int ex_data; int strings; int user_data; TYPE_1__* meth; } ;
typedef TYPE_2__ UI ;
struct TYPE_7__ {int (* ui_destroy_data ) (TYPE_2__*,int ) ;} ;


 int CRYPTO_EX_INDEX_UI ;
 int CRYPTO_THREAD_lock_free (int ) ;
 int CRYPTO_free_ex_data (int ,TYPE_2__*,int *) ;
 int OPENSSL_free (TYPE_2__*) ;
 int UI_FLAG_DUPL_DATA ;
 int free_string ;
 int sk_UI_STRING_pop_free (int ,int ) ;
 int stub1 (TYPE_2__*,int ) ;

void UI_free(UI *ui)
{
    if (ui == ((void*)0))
        return;
    if ((ui->flags & UI_FLAG_DUPL_DATA) != 0) {
        ui->meth->ui_destroy_data(ui, ui->user_data);
    }
    sk_UI_STRING_pop_free(ui->strings, free_string);
    CRYPTO_free_ex_data(CRYPTO_EX_INDEX_UI, ui, &ui->ex_data);
    CRYPTO_THREAD_lock_free(ui->lock);
    OPENSSL_free(ui);
}
