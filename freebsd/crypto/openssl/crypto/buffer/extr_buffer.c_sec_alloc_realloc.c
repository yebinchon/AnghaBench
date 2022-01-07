
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; int length; } ;
typedef TYPE_1__ BUF_MEM ;


 int OPENSSL_secure_clear_free (int *,int ) ;
 char* OPENSSL_secure_malloc (size_t) ;
 int memcpy (char*,int *,int ) ;

__attribute__((used)) static char *sec_alloc_realloc(BUF_MEM *str, size_t len)
{
    char *ret;

    ret = OPENSSL_secure_malloc(len);
    if (str->data != ((void*)0)) {
        if (ret != ((void*)0)) {
            memcpy(ret, str->data, str->length);
            OPENSSL_secure_clear_free(str->data, str->length);
            str->data = ((void*)0);
        }
    }
    return ret;
}
