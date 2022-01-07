
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum Hash { ____Placeholder_Hash } Hash ;
typedef int OPTION_CHOICE ;


 int BIO_printf (int ,char*,char const*) ;
 int EVP_MD_size (int ) ;
 int EVP_sha1 () ;
 int HASH_BOTH ;
 int HASH_NEW ;
 int HASH_OLD ;
 char LIST_SEPARATOR_CHAR ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_strdup (char const*) ;







 char* X509_get_default_cert_dir () ;
 int X509_get_default_cert_dir_env () ;
 int bio_err ;
 scalar_t__ do_dir (char*,int) ;
 int evpmd ;
 int evpmdsize ;
 char* getenv (int ) ;
 int opt_help (int ) ;
 char* opt_init (int,char**,int ) ;
 int opt_next () ;
 int opt_num_rest () ;
 char** opt_rest () ;
 int rehash_options ;
 int remove_links ;
 char* strtok (char*,char*) ;
 int verbose ;

int rehash_main(int argc, char **argv)
{
    const char *env, *prog;
    char *e, *m;
    int errs = 0;
    OPTION_CHOICE o;
    enum Hash h = HASH_NEW;

    prog = opt_init(argc, argv, rehash_options);
    while ((o = opt_next()) != 133) {
        switch (o) {
        case 133:
        case 132:
            BIO_printf(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case 131:
            opt_help(rehash_options);
            goto end;
        case 134:
            h = HASH_BOTH;
            break;
        case 129:
            h = HASH_OLD;
            break;
        case 130:
            remove_links = 0;
            break;
        case 128:
            verbose = 1;
            break;
        }
    }
    argc = opt_num_rest();
    argv = opt_rest();

    evpmd = EVP_sha1();
    evpmdsize = EVP_MD_size(evpmd);

    if (*argv != ((void*)0)) {
        while (*argv != ((void*)0))
            errs += do_dir(*argv++, h);
    } else if ((env = getenv(X509_get_default_cert_dir_env())) != ((void*)0)) {
        char lsc[2] = { LIST_SEPARATOR_CHAR, '\0' };
        m = OPENSSL_strdup(env);
        for (e = strtok(m, lsc); e != ((void*)0); e = strtok(((void*)0), lsc))
            errs += do_dir(e, h);
        OPENSSL_free(m);
    } else {
        errs += do_dir(X509_get_default_cert_dir(), h);
    }

 end:
    return errs;
}
