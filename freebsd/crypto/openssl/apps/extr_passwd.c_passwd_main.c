
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trash ;
typedef scalar_t__ passwd_modes ;
typedef int OPTION_CHOICE ;
typedef int BIO ;


 int BIO_free (int *) ;
 int BIO_gets (int *,char*,int) ;
 int BIO_printf (int ,char*,...) ;
 int BUFSIZ ;
 int ERR_print_errors (int ) ;
 scalar_t__ EVP_read_pw_string (char*,size_t,char*,int) ;
 int FORMAT_TEXT ;
 int OPENSSL_free (char*) ;
 char* app_malloc (size_t,char*) ;
 int assert (int ) ;
 int bio_err ;
 int * bio_open_default (char*,char,int ) ;
 int bio_out ;
 int do_passwd (int,char**,char**,char*,int ,int,int,int,size_t,scalar_t__) ;
 char* opt_arg () ;
 int opt_help (int ) ;
 char* opt_init (int,char**,int ) ;
 int opt_next () ;
 int opt_num_rest () ;
 int opt_rand (int) ;
 char** opt_rest () ;
 scalar_t__ passwd_aixmd5 ;
 scalar_t__ passwd_apr1 ;
 scalar_t__ passwd_crypt ;
 scalar_t__ passwd_md5 ;
 int passwd_options ;
 scalar_t__ passwd_sha256 ;
 scalar_t__ passwd_sha512 ;
 scalar_t__ passwd_unset ;
 char* strchr (char*,char) ;

int passwd_main(int argc, char **argv)
{
    BIO *in = ((void*)0);
    char *infile = ((void*)0), *salt = ((void*)0), *passwd = ((void*)0), **passwds = ((void*)0);
    char *salt_malloc = ((void*)0), *passwd_malloc = ((void*)0), *prog;
    OPTION_CHOICE o;
    int in_stdin = 0, pw_source_defined = 0;

    int in_noverify = 0;

    int passed_salt = 0, quiet = 0, table = 0, reverse = 0;
    int ret = 1;
    passwd_modes mode = passwd_unset;
    size_t passwd_malloc_size = 0;
    size_t pw_maxlen = 256;


    prog = opt_init(argc, argv, passwd_options);
    while ((o = opt_next()) != 138) {
        switch (o) {
        case 138:
        case 137:
 opthelp:
            BIO_printf(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case 136:
            opt_help(passwd_options);
            ret = 0;
            goto end;
        case 135:
            if (pw_source_defined)
                goto opthelp;
            infile = opt_arg();
            pw_source_defined = 1;
            break;
        case 134:

            in_noverify = 1;

            break;
        case 133:
            quiet = 1;
            break;
        case 128:
            table = 1;
            break;
        case 132:
            reverse = 1;
            break;
        case 144:
            if (mode != passwd_unset)
                goto opthelp;
            mode = passwd_md5;
            break;
        case 143:
            if (mode != passwd_unset)
                goto opthelp;
            mode = passwd_sha256;
            break;
        case 142:
            if (mode != passwd_unset)
                goto opthelp;
            mode = passwd_sha512;
            break;
        case 140:
            if (mode != passwd_unset)
                goto opthelp;
            mode = passwd_apr1;
            break;
        case 141:
            if (mode != passwd_unset)
                goto opthelp;
            mode = passwd_aixmd5;
            break;
        case 139:

            if (mode != passwd_unset)
                goto opthelp;
            mode = passwd_crypt;

            break;
        case 130:
            passed_salt = 1;
            salt = opt_arg();
            break;
        case 129:
            if (pw_source_defined)
                goto opthelp;
            in_stdin = 1;
            pw_source_defined = 1;
            break;
        case 131:
            if (!opt_rand(o))
                goto end;
            break;
        }
    }
    argc = opt_num_rest();
    argv = opt_rest();

    if (*argv != ((void*)0)) {
        if (pw_source_defined)
            goto opthelp;
        pw_source_defined = 1;
        passwds = argv;
    }

    if (mode == passwd_unset) {

        mode = passwd_crypt;
    }






    if (infile != ((void*)0) && in_stdin) {
        BIO_printf(bio_err, "%s: Can't combine -in and -stdin\n", prog);
        goto end;
    }

    if (infile != ((void*)0) || in_stdin) {




        in = bio_open_default(infile, 'r', FORMAT_TEXT);
        if (in == ((void*)0))
            goto end;
    }

    if (mode == passwd_crypt)
        pw_maxlen = 8;

    if (passwds == ((void*)0)) {


        passwd_malloc_size = pw_maxlen + 2;

        passwd = passwd_malloc =
            app_malloc(passwd_malloc_size, "password buffer");
    }

    if ((in == ((void*)0)) && (passwds == ((void*)0))) {





        if (1) {


            static char *passwds_static[2] = { ((void*)0), ((void*)0) };

            passwds = passwds_static;
            if (in == ((void*)0)) {
                if (EVP_read_pw_string
                    (passwd_malloc, passwd_malloc_size, "Password: ",
                     !(passed_salt || in_noverify)) != 0)
                    goto end;
            }
            passwds[0] = passwd_malloc;
        } else {

            BIO_printf(bio_err, "password required\n");
            goto end;
        }
    }

    if (in == ((void*)0)) {
        assert(passwds != ((void*)0));
        assert(*passwds != ((void*)0));

        do {
            passwd = *passwds++;
            if (!do_passwd(passed_salt, &salt, &salt_malloc, passwd, bio_out,
                           quiet, table, reverse, pw_maxlen, mode))
                goto end;
        } while (*passwds != ((void*)0));
    } else {

        int done;

        assert(passwd != ((void*)0));
        do {
            int r = BIO_gets(in, passwd, pw_maxlen + 1);
            if (r > 0) {
                char *c = (strchr(passwd, '\n'));
                if (c != ((void*)0)) {
                    *c = 0;
                } else {

                    char trash[BUFSIZ];
                    do
                        r = BIO_gets(in, trash, sizeof(trash));
                    while ((r > 0) && (!strchr(trash, '\n')));
                }

                if (!do_passwd
                    (passed_salt, &salt, &salt_malloc, passwd, bio_out, quiet,
                     table, reverse, pw_maxlen, mode))
                    goto end;
            }
            done = (r <= 0);
        } while (!done);
    }
    ret = 0;

 end:



    OPENSSL_free(salt_malloc);
    OPENSSL_free(passwd_malloc);
    BIO_free(in);
    return ret;
}
