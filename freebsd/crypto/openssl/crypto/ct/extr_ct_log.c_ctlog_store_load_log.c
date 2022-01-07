
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* log_store; int invalid_log_entries; int conf; } ;
struct TYPE_3__ {int logs; } ;
typedef TYPE_2__ CTLOG_STORE_LOAD_CTX ;
typedef int CTLOG ;


 int CTLOG_free (int *) ;
 int CT_F_CTLOG_STORE_LOAD_LOG ;
 int CTerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_strndup (char const*,int) ;
 int ctlog_new_from_conf (int **,int ,char*) ;
 int sk_CTLOG_push (int ,int *) ;

__attribute__((used)) static int ctlog_store_load_log(const char *log_name, int log_name_len,
                                void *arg)
{
    CTLOG_STORE_LOAD_CTX *load_ctx = arg;
    CTLOG *ct_log = ((void*)0);

    char *tmp;
    int ret = 0;


    if (log_name == ((void*)0))
        return 1;

    tmp = OPENSSL_strndup(log_name, log_name_len);
    if (tmp == ((void*)0))
        goto mem_err;

    ret = ctlog_new_from_conf(&ct_log, load_ctx->conf, tmp);
    OPENSSL_free(tmp);

    if (ret < 0) {

        return ret;
    }
    if (ret == 0) {

        ++load_ctx->invalid_log_entries;
        return 1;
    }

    if (!sk_CTLOG_push(load_ctx->log_store->logs, ct_log)) {
        goto mem_err;
    }
    return 1;

mem_err:
    CTLOG_free(ct_log);
    CTerr(CT_F_CTLOG_STORE_LOAD_LOG, ERR_R_MALLOC_FAILURE);
    return -1;
}
