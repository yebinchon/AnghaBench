
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * dirs; } ;
struct TYPE_8__ {int dir_type; int * hashes; int * dir; } ;
typedef TYPE_1__ BY_DIR_ENTRY ;
typedef TYPE_2__ BY_DIR ;


 int ERR_R_MALLOC_FAILURE ;
 char const LIST_SEPARATOR_CHAR ;
 TYPE_1__* OPENSSL_malloc (int) ;
 int * OPENSSL_strndup (char const*,size_t) ;
 int X509_F_ADD_CERT_DIR ;
 int X509_R_INVALID_DIRECTORY ;
 int X509err (int ,int ) ;
 int by_dir_entry_free (TYPE_1__*) ;
 int by_dir_hash_cmp ;
 int * sk_BY_DIR_ENTRY_new_null () ;
 int sk_BY_DIR_ENTRY_num (int *) ;
 int sk_BY_DIR_ENTRY_push (int *,TYPE_1__*) ;
 TYPE_1__* sk_BY_DIR_ENTRY_value (int *,int) ;
 int * sk_BY_DIR_HASH_new (int ) ;
 size_t strlen (int *) ;
 scalar_t__ strncmp (int *,char const*,size_t) ;

__attribute__((used)) static int add_cert_dir(BY_DIR *ctx, const char *dir, int type)
{
    int j;
    size_t len;
    const char *s, *ss, *p;

    if (dir == ((void*)0) || !*dir) {
        X509err(X509_F_ADD_CERT_DIR, X509_R_INVALID_DIRECTORY);
        return 0;
    }

    s = dir;
    p = s;
    do {
        if ((*p == LIST_SEPARATOR_CHAR) || (*p == '\0')) {
            BY_DIR_ENTRY *ent;

            ss = s;
            s = p + 1;
            len = p - ss;
            if (len == 0)
                continue;
            for (j = 0; j < sk_BY_DIR_ENTRY_num(ctx->dirs); j++) {
                ent = sk_BY_DIR_ENTRY_value(ctx->dirs, j);
                if (strlen(ent->dir) == len && strncmp(ent->dir, ss, len) == 0)
                    break;
            }
            if (j < sk_BY_DIR_ENTRY_num(ctx->dirs))
                continue;
            if (ctx->dirs == ((void*)0)) {
                ctx->dirs = sk_BY_DIR_ENTRY_new_null();
                if (!ctx->dirs) {
                    X509err(X509_F_ADD_CERT_DIR, ERR_R_MALLOC_FAILURE);
                    return 0;
                }
            }
            ent = OPENSSL_malloc(sizeof(*ent));
            if (ent == ((void*)0)) {
                X509err(X509_F_ADD_CERT_DIR, ERR_R_MALLOC_FAILURE);
                return 0;
            }
            ent->dir_type = type;
            ent->hashes = sk_BY_DIR_HASH_new(by_dir_hash_cmp);
            ent->dir = OPENSSL_strndup(ss, len);
            if (ent->dir == ((void*)0) || ent->hashes == ((void*)0)) {
                by_dir_entry_free(ent);
                return 0;
            }
            if (!sk_BY_DIR_ENTRY_push(ctx->dirs, ent)) {
                by_dir_entry_free(ent);
                X509err(X509_F_ADD_CERT_DIR, ERR_R_MALLOC_FAILURE);
                return 0;
            }
        }
    } while (*p++ != '\0');
    return 1;
}
