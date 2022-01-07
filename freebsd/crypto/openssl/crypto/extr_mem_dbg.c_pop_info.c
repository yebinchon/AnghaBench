
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ references; struct TYPE_4__* next; } ;
typedef TYPE_1__ APP_INFO ;


 scalar_t__ CRYPTO_THREAD_get_local (int *) ;
 int CRYPTO_THREAD_set_local (int *,TYPE_1__*) ;
 int OPENSSL_free (TYPE_1__*) ;
 int RUN_ONCE (int *,int ) ;
 int appinfokey ;
 int do_memdbg_init ;
 int memdbg_init ;

__attribute__((used)) static int pop_info(void)
{
    APP_INFO *current = ((void*)0);

    if (!RUN_ONCE(&memdbg_init, do_memdbg_init))
        return 0;

    current = (APP_INFO *)CRYPTO_THREAD_get_local(&appinfokey);
    if (current != ((void*)0)) {
        APP_INFO *next = current->next;

        if (next != ((void*)0)) {
            next->references++;
            CRYPTO_THREAD_set_local(&appinfokey, next);
        } else {
            CRYPTO_THREAD_set_local(&appinfokey, ((void*)0));
        }
        if (--(current->references) <= 0) {
            current->next = ((void*)0);
            if (next != ((void*)0))
                next->references--;
            OPENSSL_free(current);
        }
        return 1;
    }
    return 0;
}
