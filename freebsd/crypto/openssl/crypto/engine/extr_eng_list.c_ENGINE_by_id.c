
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char* id; int flags; int struct_ref; struct TYPE_10__* next; } ;
typedef TYPE_1__ ENGINE ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 char* ENGINESDIR ;
 int ENGINE_FLAGS_BY_ID_COPY ;
 int ENGINE_F_ENGINE_BY_ID ;
 int ENGINE_R_NO_SUCH_ENGINE ;
 int ENGINE_ctrl_cmd_string (TYPE_1__*,char*,char const*,int ) ;
 int ENGINE_free (TYPE_1__*) ;
 TYPE_1__* ENGINE_new () ;
 int ENGINEerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int ERR_add_error_data (int,char*,char const*) ;
 int RUN_ONCE (int *,int ) ;
 int do_engine_lock_init ;
 int engine_cpy (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* engine_list_head ;
 int engine_lock_init ;
 int engine_ref_debug (TYPE_1__*,int ,int) ;
 int global_engine_lock ;
 char* ossl_safe_getenv (char*) ;
 scalar_t__ strcmp (char const*,char*) ;

ENGINE *ENGINE_by_id(const char *id)
{
    ENGINE *iterator;
    char *load_dir = ((void*)0);
    if (id == ((void*)0)) {
        ENGINEerr(ENGINE_F_ENGINE_BY_ID, ERR_R_PASSED_NULL_PARAMETER);
        return ((void*)0);
    }
    if (!RUN_ONCE(&engine_lock_init, do_engine_lock_init)) {
        ENGINEerr(ENGINE_F_ENGINE_BY_ID, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    CRYPTO_THREAD_write_lock(global_engine_lock);
    iterator = engine_list_head;
    while (iterator && (strcmp(id, iterator->id) != 0))
        iterator = iterator->next;
    if (iterator != ((void*)0)) {





        if (iterator->flags & ENGINE_FLAGS_BY_ID_COPY) {
            ENGINE *cp = ENGINE_new();
            if (cp == ((void*)0))
                iterator = ((void*)0);
            else {
                engine_cpy(cp, iterator);
                iterator = cp;
            }
        } else {
            iterator->struct_ref++;
            engine_ref_debug(iterator, 0, 1);
        }
    }
    CRYPTO_THREAD_unlock(global_engine_lock);
    if (iterator != ((void*)0))
        return iterator;



    if (strcmp(id, "dynamic")) {
        if ((load_dir = ossl_safe_getenv("OPENSSL_ENGINES")) == ((void*)0))
            load_dir = ENGINESDIR;
        iterator = ENGINE_by_id("dynamic");
        if (!iterator || !ENGINE_ctrl_cmd_string(iterator, "ID", id, 0) ||
            !ENGINE_ctrl_cmd_string(iterator, "DIR_LOAD", "2", 0) ||
            !ENGINE_ctrl_cmd_string(iterator, "DIR_ADD",
                                    load_dir, 0) ||
            !ENGINE_ctrl_cmd_string(iterator, "LIST_ADD", "1", 0) ||
            !ENGINE_ctrl_cmd_string(iterator, "LOAD", ((void*)0), 0))
            goto notfound;
        return iterator;
    }
 notfound:
    ENGINE_free(iterator);
    ENGINEerr(ENGINE_F_ENGINE_BY_ID, ENGINE_R_NO_SUCH_ENGINE);
    ERR_add_error_data(2, "id=", id);
    return ((void*)0);

}
