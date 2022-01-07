
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_DIR_CTX ;
typedef int BIO ;


 int * BIO_new_file (char*,char*) ;
 int CONF_F_GET_NEXT_FILE ;
 int CONFerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_DIR_end (int **) ;
 char* OPENSSL_DIR_read (int **,char const*) ;
 int OPENSSL_free (char*) ;
 int OPENSSL_strlcat (char*,char const*,size_t) ;
 int OPENSSL_strlcpy (char*,char const*,size_t) ;
 char* OPENSSL_zalloc (size_t) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static BIO *get_next_file(const char *path, OPENSSL_DIR_CTX **dirctx)
{
    const char *filename;

    while ((filename = OPENSSL_DIR_read(dirctx, path)) != ((void*)0)) {
        size_t namelen;

        namelen = strlen(filename);


        if ((namelen > 5 && strcasecmp(filename + namelen - 5, ".conf") == 0)
            || (namelen > 4 && strcasecmp(filename + namelen - 4, ".cnf") == 0)) {
            size_t newlen;
            char *newpath;
            BIO *bio;

            newlen = strlen(path) + namelen + 2;
            newpath = OPENSSL_zalloc(newlen);
            if (newpath == ((void*)0)) {
                CONFerr(CONF_F_GET_NEXT_FILE, ERR_R_MALLOC_FAILURE);
                break;
            }
            if (newpath[0] == '\0') {
                OPENSSL_strlcpy(newpath, path, newlen);
                OPENSSL_strlcat(newpath, "/", newlen);
            }
            OPENSSL_strlcat(newpath, filename, newlen);

            bio = BIO_new_file(newpath, "r");
            OPENSSL_free(newpath);

            if (bio != ((void*)0))
                return bio;
        }
    }
    OPENSSL_DIR_end(dirctx);
    *dirctx = ((void*)0);
    return ((void*)0);
}
