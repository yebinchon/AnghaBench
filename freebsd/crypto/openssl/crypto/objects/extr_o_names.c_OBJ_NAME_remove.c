
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int (* free_func ) (char const*,scalar_t__,int ) ;} ;
struct TYPE_6__ {char const* name; int type; int data; } ;
typedef TYPE_1__ OBJ_NAME ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int OBJ_NAME_ALIAS ;
 int OBJ_NAME_init () ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* lh_OBJ_NAME_delete (int ,TYPE_1__*) ;
 int * name_funcs_stack ;
 int names_lh ;
 int obj_lock ;
 scalar_t__ sk_NAME_FUNCS_num (int *) ;
 TYPE_2__* sk_NAME_FUNCS_value (int *,scalar_t__) ;
 int stub1 (char const*,scalar_t__,int ) ;

int OBJ_NAME_remove(const char *name, int type)
{
    OBJ_NAME on, *ret;
    int ok = 0;

    if (!OBJ_NAME_init())
        return 0;

    CRYPTO_THREAD_write_lock(obj_lock);

    type &= ~OBJ_NAME_ALIAS;
    on.name = name;
    on.type = type;
    ret = lh_OBJ_NAME_delete(names_lh, &on);
    if (ret != ((void*)0)) {

        if ((name_funcs_stack != ((void*)0))
            && (sk_NAME_FUNCS_num(name_funcs_stack) > ret->type)) {




            sk_NAME_FUNCS_value(name_funcs_stack,
                                ret->type)->free_func(ret->name, ret->type,
                                                      ret->data);
        }
        OPENSSL_free(ret);
        ok = 1;
    }

    CRYPTO_THREAD_unlock(obj_lock);
    return ok;
}
