
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* file; int line; char const* info; int references; struct TYPE_4__* next; int threadid; } ;
typedef TYPE_1__ APP_INFO ;


 int CRYPTO_MEM_CHECK_DISABLE ;
 int CRYPTO_MEM_CHECK_ENABLE ;
 int CRYPTO_THREAD_get_current_id () ;
 scalar_t__ CRYPTO_THREAD_get_local (int *) ;
 int CRYPTO_THREAD_set_local (int *,TYPE_1__*) ;
 int CRYPTO_mem_ctrl (int ) ;
 TYPE_1__* OPENSSL_malloc (int) ;
 int RUN_ONCE (int *,int ) ;
 int appinfokey ;
 int do_memdbg_init ;
 scalar_t__ mem_check_on () ;
 int memdbg_init ;

int CRYPTO_mem_debug_push(const char *info, const char *file, int line)
{
    APP_INFO *ami, *amim;
    int ret = 0;

    if (mem_check_on()) {
        CRYPTO_mem_ctrl(CRYPTO_MEM_CHECK_DISABLE);

        if (!RUN_ONCE(&memdbg_init, do_memdbg_init)
            || (ami = OPENSSL_malloc(sizeof(*ami))) == ((void*)0))
            goto err;

        ami->threadid = CRYPTO_THREAD_get_current_id();
        ami->file = file;
        ami->line = line;
        ami->info = info;
        ami->references = 1;
        ami->next = ((void*)0);

        amim = (APP_INFO *)CRYPTO_THREAD_get_local(&appinfokey);
        CRYPTO_THREAD_set_local(&appinfokey, ami);

        if (amim != ((void*)0))
            ami->next = amim;
        ret = 1;
 err:
        CRYPTO_mem_ctrl(CRYPTO_MEM_CHECK_ENABLE);
    }

    return ret;
}
