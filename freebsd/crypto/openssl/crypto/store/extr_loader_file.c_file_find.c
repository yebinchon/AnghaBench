
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int search_name; } ;
struct TYPE_6__ {TYPE_1__ dir; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ _; } ;
typedef int OSSL_STORE_SEARCH ;
typedef TYPE_3__ OSSL_STORE_LOADER_CTX ;


 int BIO_snprintf (int ,int,char*,unsigned long) ;
 int OSSL_STORE_F_FILE_FIND ;
 int OSSL_STORE_R_SEARCH_ONLY_SUPPORTED_FOR_DIRECTORIES ;
 int OSSL_STORE_R_UNSUPPORTED_SEARCH_TYPE ;
 scalar_t__ OSSL_STORE_SEARCH_BY_NAME ;
 int OSSL_STORE_SEARCH_get0_name (int *) ;
 scalar_t__ OSSL_STORE_SEARCH_get_type (int *) ;
 int OSSL_STOREerr (int ,int ) ;
 unsigned long X509_NAME_hash (int ) ;
 scalar_t__ is_dir ;

__attribute__((used)) static int file_find(OSSL_STORE_LOADER_CTX *ctx, OSSL_STORE_SEARCH *search)
{





    if (OSSL_STORE_SEARCH_get_type(search) == OSSL_STORE_SEARCH_BY_NAME) {
        unsigned long hash = 0;

        if (ctx == ((void*)0))
            return 1;

        if (ctx->type != is_dir) {
            OSSL_STOREerr(OSSL_STORE_F_FILE_FIND,
                          OSSL_STORE_R_SEARCH_ONLY_SUPPORTED_FOR_DIRECTORIES);
            return 0;
        }

        hash = X509_NAME_hash(OSSL_STORE_SEARCH_get0_name(search));
        BIO_snprintf(ctx->_.dir.search_name, sizeof(ctx->_.dir.search_name),
                     "%08lx", hash);
        return 1;
    }

    if (ctx != ((void*)0))
        OSSL_STOREerr(OSSL_STORE_F_FILE_FIND,
                      OSSL_STORE_R_UNSUPPORTED_SEARCH_TYPE);
    return 0;
}
