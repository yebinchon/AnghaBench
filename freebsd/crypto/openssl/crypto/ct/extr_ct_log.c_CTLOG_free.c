
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int public_key; struct TYPE_4__* name; } ;
typedef TYPE_1__ CTLOG ;


 int EVP_PKEY_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;

void CTLOG_free(CTLOG *log)
{
    if (log != ((void*)0)) {
        OPENSSL_free(log->name);
        EVP_PKEY_free(log->public_key);
        OPENSSL_free(log);
    }
}
