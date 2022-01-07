
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int (* free_func ) (char const*,scalar_t__,char const*) ;} ;
struct TYPE_7__ {char const* name; int alias; int type; char const* data; } ;
typedef TYPE_1__ OBJ_NAME ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int OBJ_NAME_ALIAS ;
 int OBJ_NAME_init () ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_malloc (int) ;
 scalar_t__ lh_OBJ_NAME_error (int ) ;
 TYPE_1__* lh_OBJ_NAME_insert (int ,TYPE_1__*) ;
 int * name_funcs_stack ;
 int names_lh ;
 int obj_lock ;
 scalar_t__ sk_NAME_FUNCS_num (int *) ;
 TYPE_2__* sk_NAME_FUNCS_value (int *,scalar_t__) ;
 int stub1 (char const*,scalar_t__,char const*) ;

int OBJ_NAME_add(const char *name, int type, const char *data)
{
    OBJ_NAME *onp, *ret;
    int alias, ok = 0;

    if (!OBJ_NAME_init())
        return 0;

    alias = type & OBJ_NAME_ALIAS;
    type &= ~OBJ_NAME_ALIAS;

    onp = OPENSSL_malloc(sizeof(*onp));
    if (onp == ((void*)0)) {

        goto unlock;
    }

    onp->name = name;
    onp->alias = alias;
    onp->type = type;
    onp->data = data;

    CRYPTO_THREAD_write_lock(obj_lock);

    ret = lh_OBJ_NAME_insert(names_lh, onp);
    if (ret != ((void*)0)) {

        if ((name_funcs_stack != ((void*)0))
            && (sk_NAME_FUNCS_num(name_funcs_stack) > ret->type)) {




            sk_NAME_FUNCS_value(name_funcs_stack,
                                ret->type)->free_func(ret->name, ret->type,
                                                      ret->data);
        }
        OPENSSL_free(ret);
    } else {
        if (lh_OBJ_NAME_error(names_lh)) {

            OPENSSL_free(onp);
            goto unlock;
        }
    }

    ok = 1;

unlock:
    CRYPTO_THREAD_unlock(obj_lock);
    return ok;
}
