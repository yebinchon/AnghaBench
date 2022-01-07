
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HELPLIST_CHOICE ;


 int BIO_printf (int ,char*,...) ;
 int EVP_CIPHER_do_all_sorted (int ,int ) ;
 int EVP_MD_do_all_sorted (int ,int ) ;
 int FT_cipher ;
 int FT_general ;
 int FT_md ;
 int bio_err ;
 int bio_out ;
 int list_cipher_fn ;
 int list_disabled () ;
 int list_md_fn ;
 int list_missing_help () ;
 int list_options ;
 int list_options_for_command (int ) ;
 int list_pkey () ;
 int list_pkey_meth () ;
 int list_type (int ,int) ;
 int opt_arg () ;
 int opt_help (int ) ;
 char* opt_init (int,char**,int ) ;
 int opt_next () ;
 scalar_t__ opt_num_rest () ;

int list_main(int argc, char **argv)
{
    char *prog;
    HELPLIST_CHOICE o;
    int one = 0, done = 0;

    prog = opt_init(argc, argv, list_options);
    while ((o = opt_next()) != 135) {
        switch (o) {
        case 135:
        case 134:
opthelp:
            BIO_printf(bio_err, "%s: Use -help for summary.\n", prog);
            return 1;
        case 133:
            opt_help(list_options);
            break;
        case 131:
            one = 1;
            break;
        case 139:
            list_type(FT_general, one);
            break;
        case 137:
            list_type(FT_md, one);
            break;
        case 138:
            EVP_MD_do_all_sorted(list_md_fn, bio_out);
            break;
        case 140:
            list_type(FT_cipher, one);
            break;
        case 141:
            EVP_CIPHER_do_all_sorted(list_cipher_fn, bio_out);
            break;
        case 129:
            list_pkey();
            break;
        case 128:
            list_pkey_meth();
            break;
        case 136:
            list_disabled();
            break;
        case 132:
            list_missing_help();
            break;
        case 130:
            list_options_for_command(opt_arg());
            break;
        }
        done = 1;
    }
    if (opt_num_rest() != 0) {
        BIO_printf(bio_err, "Extra arguments given.\n");
        goto opthelp;
    }

    if (!done)
        goto opthelp;

    return 0;
}
