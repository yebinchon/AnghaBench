
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* uri; } ;
struct TYPE_6__ {TYPE_1__ dir; } ;
struct TYPE_7__ {TYPE_2__ _; } ;
typedef TYPE_3__ OSSL_STORE_LOADER_CTX ;


 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_strlcat (char*,char const*,long) ;
 char* OPENSSL_zalloc (long) ;
 int OSSL_STORE_F_FILE_NAME_TO_URI ;
 int OSSL_STOREerr (int ,int ) ;
 int assert (int ) ;
 scalar_t__ ends_with_dirsep (char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int file_name_to_uri(OSSL_STORE_LOADER_CTX *ctx, const char *name,
                            char **data)
{
    assert(name != ((void*)0));
    assert(data != ((void*)0));
    {
        const char *pathsep = ends_with_dirsep(ctx->_.dir.uri) ? "" : "/";
        long calculated_length = strlen(ctx->_.dir.uri) + strlen(pathsep)
            + strlen(name) + 1 ;

        *data = OPENSSL_zalloc(calculated_length);
        if (*data == ((void*)0)) {
            OSSL_STOREerr(OSSL_STORE_F_FILE_NAME_TO_URI, ERR_R_MALLOC_FAILURE);
            return 0;
        }

        OPENSSL_strlcat(*data, ctx->_.dir.uri, calculated_length);
        OPENSSL_strlcat(*data, pathsep, calculated_length);
        OPENSSL_strlcat(*data, name, calculated_length);
    }
    return 1;
}
