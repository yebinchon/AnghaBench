
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPTION_CHOICE ;


 char* BF_options () ;
 int BIO_printf (int ,char*,...) ;
 char* BN_options () ;
 char* DES_options () ;


 char* IDEA_options () ;
 char* MD2_options () ;
 int OPENSSL_BUILT_ON ;
 int OPENSSL_CFLAGS ;
 int OPENSSL_DIR ;
 int OPENSSL_ENGINES_DIR ;
 int OPENSSL_PLATFORM ;
 int OPENSSL_VERSION ;
 scalar_t__ OPENSSL_VERSION_NUMBER ;
 char* OPENSSL_VERSION_TEXT ;
 char* OpenSSL_version (int ) ;
 scalar_t__ OpenSSL_version_num () ;
 char* RC4_options () ;
 int bio_err ;
 int opt_help (int ) ;
 char* opt_init (int,char**,int ) ;
 int opt_next () ;
 scalar_t__ opt_num_rest () ;
 int printf (char*,...) ;
 int printlist (char*,char const**) ;
 int version_options ;

int version_main(int argc, char **argv)
{
    int ret = 1, dirty = 0, seed = 0;
    int cflags = 0, version = 0, date = 0, options = 0, platform = 0, dir = 0;
    int engdir = 0;
    char *prog;
    OPTION_CHOICE o;

    prog = opt_init(argc, argv, version_options);
    while ((o = opt_next()) != 135) {
        switch (o) {
        case 135:
        case 134:
opthelp:
            BIO_printf(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case 132:
            opt_help(version_options);
            ret = 0;
            goto end;
        case 138:
            dirty = date = 1;
            break;
        case 137:
            dirty = dir = 1;
            break;
        case 136:
            dirty = engdir = 1;
            break;
        case 133:
            dirty = cflags = 1;
            break;
        case 131:
            dirty = options = 1;
            break;
        case 130:
            dirty = platform = 1;
            break;
        case 129:
            dirty = seed = 1;
            break;
        case 128:
            dirty = version = 1;
            break;
        case 139:
            seed = options = cflags = version = date = platform = dir = engdir
                = 1;
            break;
        }
    }
    if (opt_num_rest() != 0) {
        BIO_printf(bio_err, "Extra parameters given.\n");
        goto opthelp;
    }
    if (!dirty)
        version = 1;

    if (version) {
        if (OpenSSL_version_num() == OPENSSL_VERSION_NUMBER)
            printf("%s\n", OpenSSL_version(OPENSSL_VERSION));
        else
            printf("%s (Library: %s)\n",
                   OPENSSL_VERSION_TEXT, OpenSSL_version(OPENSSL_VERSION));
    }
    if (date)
        printf("%s\n", OpenSSL_version(OPENSSL_BUILT_ON));
    if (platform)
        printf("%s\n", OpenSSL_version(OPENSSL_PLATFORM));
    if (options) {
        printf("options:  ");
        printf("%s ", BN_options());

        printf("%s ", MD2_options());


        printf("%s ", RC4_options());


        printf("%s ", DES_options());


        printf("%s ", IDEA_options());


        printf("%s ", BF_options());

        printf("\n");
    }
    if (cflags)
        printf("%s\n", OpenSSL_version(OPENSSL_CFLAGS));
    if (dir)
        printf("%s\n", OpenSSL_version(OPENSSL_DIR));
    if (engdir)
        printf("%s\n", OpenSSL_version(OPENSSL_ENGINES_DIR));
    if (seed) {
        printf("Seeding source:");
        printf("\n");
    }
    ret = 0;
 end:
    return ret;
}
