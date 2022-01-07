
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* name; int ex_data; } ;
typedef TYPE_1__ UI_METHOD ;


 int CRYPTO_EX_INDEX_UI_METHOD ;
 int CRYPTO_new_ex_data (int ,TYPE_1__*,int *) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_strdup (char const*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int UI_F_UI_CREATE_METHOD ;
 int UIerr (int ,int ) ;

UI_METHOD *UI_create_method(const char *name)
{
    UI_METHOD *ui_method = ((void*)0);

    if ((ui_method = OPENSSL_zalloc(sizeof(*ui_method))) == ((void*)0)
        || (ui_method->name = OPENSSL_strdup(name)) == ((void*)0)
        || !CRYPTO_new_ex_data(CRYPTO_EX_INDEX_UI_METHOD, ui_method,
                               &ui_method->ex_data)) {
        if (ui_method)
            OPENSSL_free(ui_method->name);
        OPENSSL_free(ui_method);
        UIerr(UI_F_UI_CREATE_METHOD, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    return ui_method;
}
